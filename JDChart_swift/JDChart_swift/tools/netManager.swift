
//
//  netManager.swift
//  JDChart_swift
//
//  Created by liuhang on 17/6/30.
//  Copyright © 2017年 liuhang. All rights reserved.
//
import UIKit
import Alamofire
enum httpMethod {
    case POST
    case GET
}
class netManager: NSObject {
    //单例
    static let shared = netManager()
    //请求
    func mainRequest(urlStr: String,httpMethod: httpMethod,parameters:[String: AnyObject]?,completion:@escaping (_ isSuccess: Bool,_ json: AnyObject?) ->()) {
        //请求方式
        let method = httpMethod == .POST ? HTTPMethod.post :HTTPMethod.get
        //开始请求
        Alamofire.request(urlStr, method: method, parameters: parameters, encoding: URLEncoding.default).responseJSON { (response) in
            
            if let jsonData = response.result.value {
                //成功
                completion(true,jsonData as AnyObject?)
            }else {
                //失败
                completion(false,nil)
            }
            
        }
    }
}
