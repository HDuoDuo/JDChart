//
//	Item.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON

class Item : NSObject {
    //cell的高度
    var itemCellHeight: CGFloat!
    var cellFooterHeight: CGFloat = 20
    
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
	var canSelectPromotions : [canSelectGift]!
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
		for (index,giftJson) in giftsArray.enumerated(){
            let value = Gift(fromJson: giftJson)
            if index == 0 {
                value.isNumberOne = true
            }
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
		canSelectPromotions = [canSelectGift]()
		let canSelectPromotionsArray = json["canSelectPromotions"].arrayValue
		for (index,canSelectPromotionsJson) in canSelectPromotionsArray.enumerated(){
            let value = canSelectGift.init(fromJson: canSelectPromotionsJson)
            if index == 0 {
                value.isNumberOne = true
            }
            canSelectPromotions.append(value)
            
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
        //计算高度
        itemCellHeight = 100 + CGFloat(gifts.count + (canSelectPromotions.count>0 ? 1:0)) * cellFooterHeight
	}
}
