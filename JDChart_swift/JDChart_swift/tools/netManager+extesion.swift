
//
//  netManager+extesion.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/2.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import Foundation

extension netManager {
    //购物车数据
    func getChartList(completion:@escaping (_ response: AnyObject) -> ()) {
        mainRequest(urlStr: "http://httpbin.org", httpMethod: .POST, parameters: nil, completion: { (isSuccess,response) in
            if isSuccess {
                completion(response!)
            }else {
                print("请求失败")
            }
        })
    }
}
