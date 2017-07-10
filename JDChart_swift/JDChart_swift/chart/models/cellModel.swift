//
//  cellModel.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/4.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import Foundation
import SwiftyJSON

class cellModel: NSObject {
    var awardType : Int!
    var checkType : Int!
    var discount : Double!
    var gifts : [Gift]!
    var Id : String!
    var idForOldVersion : Int!
    var imgUrl : String!
    var name : String!
    var num : Int!
    var point : Int!
    var price : Double!
    var priceImg : String!
    var priceShow : String!
    var rePrice : Double!
    var tags : [AnyObject]!
    var canSelectPromotions : [AnyObject]!
    var cardSpecialId : Int!
    var cid : Int!
    var isBook : Bool!
    var isProvideService : Int!
    var isYb : Bool!
    var maxNum : Int!
    var remainNum : String!
    var remainNumInt : Int!
    var weight : String!
    var stockCode : Int!
    var stockState : String!
    var targetId : Int!
    
    
    /**
     * Instantiate the instance using the passed json values to set the properties values
     */
    init(fromJson json: JSON!){
        if json.isEmpty{
            return
        }
        awardType = json["AwardType"].intValue
        checkType = json["CheckType"].intValue
        discount = json["Discount"].doubleValue
        gifts = [Gift]()
        let giftsArray = json["Gifts"].arrayValue
        for giftsJson in giftsArray{
            let value = Gift(fromJson: giftsJson)
            gifts.append(value)
        }
        Id = json["Id"].stringValue
        idForOldVersion = json["IdForOldVersion"].intValue
        imgUrl = json["ImgUrl"].stringValue
        name = json["Name"].stringValue
        num = json["Num"].intValue
        point = json["Point"].intValue
        price = json["Price"].doubleValue
        priceImg = json["PriceImg"].stringValue
        priceShow = json["PriceShow"].stringValue
        rePrice = json["RePrice"].doubleValue
        tags = [AnyObject]()
        let tagsArray = json["Tags"].arrayValue
        for tagsJson in tagsArray{
            tags.append(tagsJson.stringValue as AnyObject)
        }
        canSelectPromotions = [AnyObject]()
        let canSelectPromotionsArray = json["canSelectPromotions"].arrayValue
        for canSelectPromotionsJson in canSelectPromotionsArray{
            canSelectPromotions.append(canSelectPromotionsJson.stringValue as AnyObject)
        }
        cardSpecialId = json["cardSpecialId"].intValue
        cid = json["cid"].intValue
        isBook = json["isBook"].boolValue
        isProvideService = json["isProvideService"].intValue
        isYb = json["isYb"].boolValue
        maxNum = json["maxNum"].intValue
        remainNum = json["remainNum"].stringValue
        remainNumInt = json["remainNumInt"].intValue
        weight = json["weight"].stringValue
        stockCode = json["stockCode"].intValue
        stockState = json["stockState"].stringValue
        targetId = json["targetId"].intValue
    }

}
