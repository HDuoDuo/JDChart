
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
    func getChartList(completion:@escaping (_ response: CartInfo) -> ()) {
        
        let pathf = Bundle.main.path(forResource: "chartString", ofType: "txt")!
        let jsonStr = try! String(contentsOfFile: pathf)
        
        
        let jsonData = JSON(parseJSON: jsonStr)
        //获取CartInfoJson
        let cartInfoJson = jsonData["cartInfo"]
        if !cartInfoJson.isEmpty{
            let cartInfoClass = CartInfo(fromJson: cartInfoJson)
            completion(cartInfoClass)
        }
        
        
//        mainRequest(urlStr: "https://api.m.jd.com/jfs/t3286/96/6144638446/464024/1d56672d/5896f890Ne7cd3fcd.jpg!q70.jpgclient.action?functionId=cart", httpMethod: .GET, parameters: nil, completion: { (isSuccess,response) in
//            if isSuccess {
//                completion(response!)
//            }else {
//                print("购物车数据请求失败")
//            }
//        })
    }
}
