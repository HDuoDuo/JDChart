//
//	Vendor.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Vendor : NSObject, NSCoding{

	var fareType : Int!
	var shopId : Int!
	var shopName : String!
	var sorted : [Sorted]!
	var specialId : Int!
	var vendorId : Int!
	var vendorPrice : Double!
	var vendorType : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		fareType = json["fareType"].intValue
		shopId = json["shopId"].intValue
		shopName = json["shopName"].stringValue
		sorted = [Sorted]()
		let sortedArray = json["sorted"].arrayValue
		for sortedJson in sortedArray{
			let value = Sorted(fromJson: sortedJson)
			sorted.append(value)
		}
		specialId = json["specialId"].intValue
		vendorId = json["vendorId"].intValue
		vendorPrice = json["vendorPrice"].doubleValue
		vendorType = json["vendorType"].intValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if fareType != nil{
			dictionary["fareType"] = fareType
		}
		if shopId != nil{
			dictionary["shopId"] = shopId
		}
		if shopName != nil{
			dictionary["shopName"] = shopName
		}
		if sorted != nil{
			var dictionaryElements = [[String:Any]]()
			for sortedElement in sorted {
				dictionaryElements.append(sortedElement.toDictionary())
			}
			dictionary["sorted"] = dictionaryElements
		}
		if specialId != nil{
			dictionary["specialId"] = specialId
		}
		if vendorId != nil{
			dictionary["vendorId"] = vendorId
		}
		if vendorPrice != nil{
			dictionary["vendorPrice"] = vendorPrice
		}
		if vendorType != nil{
			dictionary["vendorType"] = vendorType
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         fareType = aDecoder.decodeObject(forKey: "fareType") as? Int
         shopId = aDecoder.decodeObject(forKey: "shopId") as? Int
         shopName = aDecoder.decodeObject(forKey: "shopName") as? String
         sorted = aDecoder.decodeObject(forKey: "sorted") as? [Sorted]
         specialId = aDecoder.decodeObject(forKey: "specialId") as? Int
         vendorId = aDecoder.decodeObject(forKey: "vendorId") as? Int
         vendorPrice = aDecoder.decodeObject(forKey: "vendorPrice") as? Double
         vendorType = aDecoder.decodeObject(forKey: "vendorType") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if fareType != nil{
			aCoder.encode(fareType, forKey: "fareType")
		}
		if shopId != nil{
			aCoder.encode(shopId, forKey: "shopId")
		}
		if shopName != nil{
			aCoder.encode(shopName, forKey: "shopName")
		}
		if sorted != nil{
			aCoder.encode(sorted, forKey: "sorted")
		}
		if specialId != nil{
			aCoder.encode(specialId, forKey: "specialId")
		}
		if vendorId != nil{
			aCoder.encode(vendorId, forKey: "vendorId")
		}
		if vendorPrice != nil{
			aCoder.encode(vendorPrice, forKey: "vendorPrice")
		}
		if vendorType != nil{
			aCoder.encode(vendorType, forKey: "vendorType")
		}

	}

}
