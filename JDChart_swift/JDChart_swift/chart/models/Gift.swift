//
//  Gift.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/6.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import Foundation
import SwiftyJSON

class Gift: NSObject {
    var isNumberOne: Bool = false
    var AwardType: Int!
    var Name: String!
    var Num: Int!

    init(fromJson json: JSON!){
        if json.isEmpty{
            return
        }
        AwardType = json["AwardType"].intValue
        Name = json["Name"].stringValue
        Num = json["Num"].intValue
    }
}
