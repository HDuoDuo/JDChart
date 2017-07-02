//
//	CardsNotice.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class CardsNotice : NSObject, NSCoding{

	var cardId : String!
	var elems : [Elem]!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		cardId = json["cardId"].stringValue
		elems = [Elem]()
		let elemsArray = json["elems"].arrayValue
		for elemsJson in elemsArray{
			let value = Elem(fromJson: elemsJson)
			elems.append(value)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if cardId != nil{
			dictionary["cardId"] = cardId
		}
		if elems != nil{
			var dictionaryElements = [[String:Any]]()
			for elemsElement in elems {
				dictionaryElements.append(elemsElement.toDictionary())
			}
			dictionary["elems"] = dictionaryElements
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         cardId = aDecoder.decodeObject(forKey: "cardId") as? String
         elems = aDecoder.decodeObject(forKey: "elems") as? [Elem]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if cardId != nil{
			aCoder.encode(cardId, forKey: "cardId")
		}
		if elems != nil{
			aCoder.encode(elems, forKey: "elems")
		}

	}

}
