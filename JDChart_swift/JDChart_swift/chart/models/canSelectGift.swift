//
//  canSelectGift.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/7.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import Foundation
import SwiftyJSON

class canSelectGift: NSObject {
    var isNumberOne: Bool = false    
    var type: Int!
    var title: String!
    var checkType: Int!
    
    init(fromJson json: JSON!){
        if json.isEmpty{
            return
        }
        type = json["type"].intValue
        title = json["title"].stringValue
        checkType = json["checkType"].intValue
    }
}
