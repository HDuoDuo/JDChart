//
//	CartInfo.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class CartInfo : NSObject, NSCoding{

	var gifts : [AnyObject]!
	var isEmpty : Bool!
	var num : Int!
	var price : Double!
	var priceShow : String!
	var rePrice : Double!
	var skus : [AnyObject]!
	var suits : [AnyObject]!
	var abCards : AbCard!
	var cartNum : Int!
	var checkedWareNum : Int!
	var configVersion : String!
	var limitBookNum : Int!
	var limitCartNum : Int!
	var limitNotBookNum : Int!
	var limitWareNum : Int!
	var specialId : Int!
	var tip1 : String!
	var tip2 : String!
	var vendors : [Vendor]!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		gifts = [AnyObject]()
		let giftsArray = json["Gifts"].arrayValue
		for giftsJson in giftsArray{
			gifts.append(giftsJson.stringValue as AnyObject)
		}
		isEmpty = json["IsEmpty"].boolValue
		num = json["Num"].intValue
		price = json["Price"].doubleValue
		priceShow = json["PriceShow"].stringValue
		rePrice = json["RePrice"].doubleValue
		skus = [AnyObject]()
		let skusArray = json["Skus"].arrayValue
		for skusJson in skusArray{
			skus.append(skusJson.stringValue as AnyObject)
		}
		suits = [AnyObject]()
		let suitsArray = json["Suits"].arrayValue
		for suitsJson in suitsArray{
			suits.append(suitsJson.stringValue as AnyObject)
		}
		let abCardsJson = json["abCards"]
		if !abCardsJson.isEmpty{
			abCards = AbCard(fromJson: abCardsJson)
		}
		cartNum = json["cartNum"].intValue
		checkedWareNum = json["checkedWareNum"].intValue
		configVersion = json["configVersion"].stringValue
		limitBookNum = json["limitBookNum"].intValue
		limitCartNum = json["limitCartNum"].intValue
		limitNotBookNum = json["limitNotBookNum"].intValue
		limitWareNum = json["limitWareNum"].intValue
		specialId = json["specialId"].intValue
		tip1 = json["tip_1"].stringValue
		tip2 = json["tip_2"].stringValue
		vendors = [Vendor]()
		let vendorsArray = json["vendors"].arrayValue
		for vendorsJson in vendorsArray{
			let value = Vendor(fromJson: vendorsJson)
			vendors.append(value)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if gifts != nil{
			dictionary["Gifts"] = gifts
		}
		if isEmpty != nil{
			dictionary["IsEmpty"] = isEmpty
		}
		if num != nil{
			dictionary["Num"] = num
		}
		if price != nil{
			dictionary["Price"] = price
		}
		if priceShow != nil{
			dictionary["PriceShow"] = priceShow
		}
		if rePrice != nil{
			dictionary["RePrice"] = rePrice
		}
		if skus != nil{
			dictionary["Skus"] = skus
		}
		if suits != nil{
			dictionary["Suits"] = suits
		}
		if abCards != nil{
			dictionary["abCards"] = abCards.toDictionary()
		}
		if cartNum != nil{
			dictionary["cartNum"] = cartNum
		}
		if checkedWareNum != nil{
			dictionary["checkedWareNum"] = checkedWareNum
		}
		if configVersion != nil{
			dictionary["configVersion"] = configVersion
		}
		if limitBookNum != nil{
			dictionary["limitBookNum"] = limitBookNum
		}
		if limitCartNum != nil{
			dictionary["limitCartNum"] = limitCartNum
		}
		if limitNotBookNum != nil{
			dictionary["limitNotBookNum"] = limitNotBookNum
		}
		if limitWareNum != nil{
			dictionary["limitWareNum"] = limitWareNum
		}
		if specialId != nil{
			dictionary["specialId"] = specialId
		}
		if tip1 != nil{
			dictionary["tip_1"] = tip1
		}
		if tip2 != nil{
			dictionary["tip_2"] = tip2
		}
		if vendors != nil{
			var dictionaryElements = [[String:Any]]()
			for vendorsElement in vendors {
				dictionaryElements.append(vendorsElement.toDictionary())
			}
			dictionary["vendors"] = dictionaryElements
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         gifts = aDecoder.decodeObject(forKey: "Gifts") as? [AnyObject]
         isEmpty = aDecoder.decodeObject(forKey: "IsEmpty") as? Bool
         num = aDecoder.decodeObject(forKey: "Num") as? Int
         price = aDecoder.decodeObject(forKey: "Price") as? Double
         priceShow = aDecoder.decodeObject(forKey: "PriceShow") as? String
         rePrice = aDecoder.decodeObject(forKey: "RePrice") as? Double
         skus = aDecoder.decodeObject(forKey: "Skus") as? [AnyObject]
         suits = aDecoder.decodeObject(forKey: "Suits") as? [AnyObject]
         abCards = aDecoder.decodeObject(forKey: "abCards") as? AbCard
         cartNum = aDecoder.decodeObject(forKey: "cartNum") as? Int
         checkedWareNum = aDecoder.decodeObject(forKey: "checkedWareNum") as? Int
         configVersion = aDecoder.decodeObject(forKey: "configVersion") as? String
         limitBookNum = aDecoder.decodeObject(forKey: "limitBookNum") as? Int
         limitCartNum = aDecoder.decodeObject(forKey: "limitCartNum") as? Int
         limitNotBookNum = aDecoder.decodeObject(forKey: "limitNotBookNum") as? Int
         limitWareNum = aDecoder.decodeObject(forKey: "limitWareNum") as? Int
         specialId = aDecoder.decodeObject(forKey: "specialId") as? Int
         tip1 = aDecoder.decodeObject(forKey: "tip_1") as? String
         tip2 = aDecoder.decodeObject(forKey: "tip_2") as? String
         vendors = aDecoder.decodeObject(forKey: "vendors") as? [Vendor]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if gifts != nil{
			aCoder.encode(gifts, forKey: "Gifts")
		}
		if isEmpty != nil{
			aCoder.encode(isEmpty, forKey: "IsEmpty")
		}
		if num != nil{
			aCoder.encode(num, forKey: "Num")
		}
		if price != nil{
			aCoder.encode(price, forKey: "Price")
		}
		if priceShow != nil{
			aCoder.encode(priceShow, forKey: "PriceShow")
		}
		if rePrice != nil{
			aCoder.encode(rePrice, forKey: "RePrice")
		}
		if skus != nil{
			aCoder.encode(skus, forKey: "Skus")
		}
		if suits != nil{
			aCoder.encode(suits, forKey: "Suits")
		}
		if abCards != nil{
			aCoder.encode(abCards, forKey: "abCards")
		}
		if cartNum != nil{
			aCoder.encode(cartNum, forKey: "cartNum")
		}
		if checkedWareNum != nil{
			aCoder.encode(checkedWareNum, forKey: "checkedWareNum")
		}
		if configVersion != nil{
			aCoder.encode(configVersion, forKey: "configVersion")
		}
		if limitBookNum != nil{
			aCoder.encode(limitBookNum, forKey: "limitBookNum")
		}
		if limitCartNum != nil{
			aCoder.encode(limitCartNum, forKey: "limitCartNum")
		}
		if limitNotBookNum != nil{
			aCoder.encode(limitNotBookNum, forKey: "limitNotBookNum")
		}
		if limitWareNum != nil{
			aCoder.encode(limitWareNum, forKey: "limitWareNum")
		}
		if specialId != nil{
			aCoder.encode(specialId, forKey: "specialId")
		}
		if tip1 != nil{
			aCoder.encode(tip1, forKey: "tip_1")
		}
		if tip2 != nil{
			aCoder.encode(tip2, forKey: "tip_2")
		}
		if vendors != nil{
			aCoder.encode(vendors, forKey: "vendors")
		}

	}

}
