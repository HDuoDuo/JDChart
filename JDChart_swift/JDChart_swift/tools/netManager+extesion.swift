
//
//  netManager+extesion.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/2.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import Foundation
import SwiftyJSON
extension netManager {
    //购物车数据
    func getChartList(completion:@escaping (_ response: RootClass) -> ()) {
        
        let pathf = Bundle.main.path(forResource: "chartString", ofType: "txt")!
        let jsonStr = try! String(contentsOfFile: pathf)
        
        
        let jsonData = JSON.init(parseJSON: jsonStr)
        
        let  rootClass = RootClass.init(fromJson: jsonData)
        
        completion(rootClass)
        
//        mainRequest(urlStr: "https://api.m.jd.com/client.action?functionId=cart", httpMethod: .GET, parameters: nil, completion: { (isSuccess,response) in
//            if isSuccess {
//                completion(response!)
//            }else {
//                print("购物车数据请求失败")
//            }
//        })
    }
}
