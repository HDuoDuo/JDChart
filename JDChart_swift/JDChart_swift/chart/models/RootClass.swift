//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class RootClass : NSObject, NSCoding{

	var cartInfo : CartInfo!
	var code : String!
	var configCards : ConfigCard!
	var imageDomain : String!
	var notice : Notice!
	var resultCode : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		let cartInfoJson = json["cartInfo"]
		if !cartInfoJson.isEmpty{
			cartInfo = CartInfo(fromJson: cartInfoJson)
		}
		code = json["code"].stringValue
		let configCardsJson = json["configCards"]
		if !configCardsJson.isEmpty{
			configCards = ConfigCard(fromJson: configCardsJson)
		}
		imageDomain = json["imageDomain"].stringValue
		let noticeJson = json["notice"]
		if !noticeJson.isEmpty{
			notice = Notice(fromJson: noticeJson)
		}
		resultCode = json["resultCode"].intValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if cartInfo != nil{
			dictionary["cartInfo"] = cartInfo.toDictionary()
		}
		if code != nil{
			dictionary["code"] = code
		}
		if configCards != nil{
			dictionary["configCards"] = configCards.toDictionary()
		}
		if imageDomain != nil{
			dictionary["imageDomain"] = imageDomain
		}
		if notice != nil{
			dictionary["notice"] = notice.toDictionary()
		}
		if resultCode != nil{
			dictionary["resultCode"] = resultCode
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         cartInfo = aDecoder.decodeObject(forKey: "cartInfo") as? CartInfo
         code = aDecoder.decodeObject(forKey: "code") as? String
         configCards = aDecoder.decodeObject(forKey: "configCards") as? ConfigCard
         imageDomain = aDecoder.decodeObject(forKey: "imageDomain") as? String
         notice = aDecoder.decodeObject(forKey: "notice") as? Notice
         resultCode = aDecoder.decodeObject(forKey: "resultCode") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if cartInfo != nil{
			aCoder.encode(cartInfo, forKey: "cartInfo")
		}
		if code != nil{
			aCoder.encode(code, forKey: "code")
		}
		if configCards != nil{
			aCoder.encode(configCards, forKey: "configCards")
		}
		if imageDomain != nil{
			aCoder.encode(imageDomain, forKey: "imageDomain")
		}
		if notice != nil{
			aCoder.encode(notice, forKey: "notice")
		}
		if resultCode != nil{
			aCoder.encode(resultCode, forKey: "resultCode")
		}

	}

}
