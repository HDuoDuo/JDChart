//
//	SkuLabel.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class SkuLabel : NSObject, NSCoding{

	var priceTop : [PriceTop]!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		priceTop = [PriceTop]()
		let priceTopArray = json["priceTop"].arrayValue
		for priceTopJson in priceTopArray{
			let value = PriceTop(fromJson: priceTopJson)
			priceTop.append(value)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if priceTop != nil{
			var dictionaryElements = [[String:Any]]()
			for priceTopElement in priceTop {
				dictionaryElements.append(priceTopElement.toDictionary())
			}
			dictionary["priceTop"] = dictionaryElements
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         priceTop = aDecoder.decodeObject(forKey: "priceTop") as? [PriceTop]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if priceTop != nil{
			aCoder.encode(priceTop, forKey: "priceTop")
		}

	}

}
