//
//	ConfigCard.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class ConfigCard : NSObject, NSCoding{

	var cardsNotice : [CardsNotice]!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		cardsNotice = [CardsNotice]()
		let cardsNoticeArray = json["cardsNotice"].arrayValue
		for cardsNoticeJson in cardsNoticeArray{
			let value = CardsNotice(fromJson: cardsNoticeJson)
			cardsNotice.append(value)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if cardsNotice != nil{
			var dictionaryElements = [[String:Any]]()
			for cardsNoticeElement in cardsNotice {
				dictionaryElements.append(cardsNoticeElement.toDictionary())
			}
			dictionary["cardsNotice"] = dictionaryElements
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         cardsNotice = aDecoder.decodeObject(forKey: "cardsNotice") as? [CardsNotice]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if cardsNotice != nil{
			aCoder.encode(cardsNotice, forKey: "cardsNotice")
		}

	}

}
