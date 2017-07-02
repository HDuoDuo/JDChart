//
//	Item.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Item : NSObject, NSCoding{

	var awardType : Int!
	var checkType : Int!
	var discount : Double!
	var gifts : [AnyObject]!
	var id : String!
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
	var propertyTags : PropertyTag!
	var remainNum : String!
	var remainNumInt : Int!
	var skuLabels : SkuLabel!
	var specialId : String!
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
		gifts = [AnyObject]()
		let giftsArray = json["Gifts"].arrayValue
		for giftsJson in giftsArray{
			gifts.append(giftsJson.stringValue as AnyObject)
		}
		id = json["Id"].stringValue
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
		let propertyTagsJson = json["propertyTags"]
		if !propertyTagsJson.isEmpty{
			propertyTags = PropertyTag(fromJson: propertyTagsJson)
		}
		remainNum = json["remainNum"].stringValue
		remainNumInt = json["remainNumInt"].intValue
		let skuLabelsJson = json["skuLabels"]
		if !skuLabelsJson.isEmpty{
			skuLabels = SkuLabel(fromJson: skuLabelsJson)
		}
		specialId = json["specialId"].stringValue
		stockCode = json["stockCode"].intValue
		stockState = json["stockState"].stringValue
		targetId = json["targetId"].intValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if awardType != nil{
			dictionary["AwardType"] = awardType
		}
		if checkType != nil{
			dictionary["CheckType"] = checkType
		}
		if discount != nil{
			dictionary["Discount"] = discount
		}
		if gifts != nil{
			dictionary["Gifts"] = gifts
		}
		if id != nil{
			dictionary["Id"] = id
		}
		if idForOldVersion != nil{
			dictionary["IdForOldVersion"] = idForOldVersion
		}
		if imgUrl != nil{
			dictionary["ImgUrl"] = imgUrl
		}
		if name != nil{
			dictionary["Name"] = name
		}
		if num != nil{
			dictionary["Num"] = num
		}
		if point != nil{
			dictionary["Point"] = point
		}
		if price != nil{
			dictionary["Price"] = price
		}
		if priceImg != nil{
			dictionary["PriceImg"] = priceImg
		}
		if priceShow != nil{
			dictionary["PriceShow"] = priceShow
		}
		if rePrice != nil{
			dictionary["RePrice"] = rePrice
		}
		if tags != nil{
			dictionary["Tags"] = tags
		}
		if canSelectPromotions != nil{
			dictionary["canSelectPromotions"] = canSelectPromotions
		}
		if cardSpecialId != nil{
			dictionary["cardSpecialId"] = cardSpecialId
		}
		if cid != nil{
			dictionary["cid"] = cid
		}
		if isBook != nil{
			dictionary["isBook"] = isBook
		}
		if isProvideService != nil{
			dictionary["isProvideService"] = isProvideService
		}
		if isYb != nil{
			dictionary["isYb"] = isYb
		}
		if maxNum != nil{
			dictionary["maxNum"] = maxNum
		}
		if propertyTags != nil{
			dictionary["propertyTags"] = propertyTags.toDictionary()
		}
		if remainNum != nil{
			dictionary["remainNum"] = remainNum
		}
		if remainNumInt != nil{
			dictionary["remainNumInt"] = remainNumInt
		}
		if skuLabels != nil{
			dictionary["skuLabels"] = skuLabels.toDictionary()
		}
		if specialId != nil{
			dictionary["specialId"] = specialId
		}
		if stockCode != nil{
			dictionary["stockCode"] = stockCode
		}
		if stockState != nil{
			dictionary["stockState"] = stockState
		}
		if targetId != nil{
			dictionary["targetId"] = targetId
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         awardType = aDecoder.decodeObject(forKey: "AwardType") as? Int
         checkType = aDecoder.decodeObject(forKey: "CheckType") as? Int
         discount = aDecoder.decodeObject(forKey: "Discount") as? Double
         gifts = aDecoder.decodeObject(forKey: "Gifts") as? [AnyObject]
         id = aDecoder.decodeObject(forKey: "Id") as? String
         idForOldVersion = aDecoder.decodeObject(forKey: "IdForOldVersion") as? Int
         imgUrl = aDecoder.decodeObject(forKey: "ImgUrl") as? String
         name = aDecoder.decodeObject(forKey: "Name") as? String
         num = aDecoder.decodeObject(forKey: "Num") as? Int
         point = aDecoder.decodeObject(forKey: "Point") as? Int
         price = aDecoder.decodeObject(forKey: "Price") as? Double
         priceImg = aDecoder.decodeObject(forKey: "PriceImg") as? String
         priceShow = aDecoder.decodeObject(forKey: "PriceShow") as? String
         rePrice = aDecoder.decodeObject(forKey: "RePrice") as? Double
         tags = aDecoder.decodeObject(forKey: "Tags") as? [AnyObject]
         canSelectPromotions = aDecoder.decodeObject(forKey: "canSelectPromotions") as? [AnyObject]
         cardSpecialId = aDecoder.decodeObject(forKey: "cardSpecialId") as? Int
         cid = aDecoder.decodeObject(forKey: "cid") as? Int
         isBook = aDecoder.decodeObject(forKey: "isBook") as? Bool
         isProvideService = aDecoder.decodeObject(forKey: "isProvideService") as? Int
         isYb = aDecoder.decodeObject(forKey: "isYb") as? Bool
         maxNum = aDecoder.decodeObject(forKey: "maxNum") as? Int
         propertyTags = aDecoder.decodeObject(forKey: "propertyTags") as? PropertyTag
         remainNum = aDecoder.decodeObject(forKey: "remainNum") as? String
         remainNumInt = aDecoder.decodeObject(forKey: "remainNumInt") as? Int
         skuLabels = aDecoder.decodeObject(forKey: "skuLabels") as? SkuLabel
         specialId = aDecoder.decodeObject(forKey: "specialId") as? String
         stockCode = aDecoder.decodeObject(forKey: "stockCode") as? Int
         stockState = aDecoder.decodeObject(forKey: "stockState") as? String
         targetId = aDecoder.decodeObject(forKey: "targetId") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if awardType != nil{
			aCoder.encode(awardType, forKey: "AwardType")
		}
		if checkType != nil{
			aCoder.encode(checkType, forKey: "CheckType")
		}
		if discount != nil{
			aCoder.encode(discount, forKey: "Discount")
		}
		if gifts != nil{
			aCoder.encode(gifts, forKey: "Gifts")
		}
		if id != nil{
			aCoder.encode(id, forKey: "Id")
		}
		if idForOldVersion != nil{
			aCoder.encode(idForOldVersion, forKey: "IdForOldVersion")
		}
		if imgUrl != nil{
			aCoder.encode(imgUrl, forKey: "ImgUrl")
		}
		if name != nil{
			aCoder.encode(name, forKey: "Name")
		}
		if num != nil{
			aCoder.encode(num, forKey: "Num")
		}
		if point != nil{
			aCoder.encode(point, forKey: "Point")
		}
		if price != nil{
			aCoder.encode(price, forKey: "Price")
		}
		if priceImg != nil{
			aCoder.encode(priceImg, forKey: "PriceImg")
		}
		if priceShow != nil{
			aCoder.encode(priceShow, forKey: "PriceShow")
		}
		if rePrice != nil{
			aCoder.encode(rePrice, forKey: "RePrice")
		}
		if tags != nil{
			aCoder.encode(tags, forKey: "Tags")
		}
		if canSelectPromotions != nil{
			aCoder.encode(canSelectPromotions, forKey: "canSelectPromotions")
		}
		if cardSpecialId != nil{
			aCoder.encode(cardSpecialId, forKey: "cardSpecialId")
		}
		if cid != nil{
			aCoder.encode(cid, forKey: "cid")
		}
		if isBook != nil{
			aCoder.encode(isBook, forKey: "isBook")
		}
		if isProvideService != nil{
			aCoder.encode(isProvideService, forKey: "isProvideService")
		}
		if isYb != nil{
			aCoder.encode(isYb, forKey: "isYb")
		}
		if maxNum != nil{
			aCoder.encode(maxNum, forKey: "maxNum")
		}
		if propertyTags != nil{
			aCoder.encode(propertyTags, forKey: "propertyTags")
		}
		if remainNum != nil{
			aCoder.encode(remainNum, forKey: "remainNum")
		}
		if remainNumInt != nil{
			aCoder.encode(remainNumInt, forKey: "remainNumInt")
		}
		if skuLabels != nil{
			aCoder.encode(skuLabels, forKey: "skuLabels")
		}
		if specialId != nil{
			aCoder.encode(specialId, forKey: "specialId")
		}
		if stockCode != nil{
			aCoder.encode(stockCode, forKey: "stockCode")
		}
		if stockState != nil{
			aCoder.encode(stockState, forKey: "stockState")
		}
		if targetId != nil{
			aCoder.encode(targetId, forKey: "targetId")
		}

	}

}
