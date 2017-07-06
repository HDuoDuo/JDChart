//
//	Sorted.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Sorted : NSObject, NSCoding{

	var item : Item?
	var itemType : Int!
    var items: Items?
    

	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
        itemType = json["itemType"].intValue
        
		let itemJson = json["item"]
		if !itemJson.isEmpty{
            if itemType==1 {
                item = Item(fromJson: itemJson)
            }else {
                items = Items(fromJson: itemJson)
            }
			
		}
		
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if item != nil{
			dictionary["item"] = item?.toDictionary()
		}
		if itemType != nil{
			dictionary["itemType"] = itemType
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         item = aDecoder.decodeObject(forKey: "item") as? Item
         itemType = aDecoder.decodeObject(forKey: "itemType") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if item != nil{
			aCoder.encode(item, forKey: "item")
		}
		if itemType != nil{
			aCoder.encode(itemType, forKey: "itemType")
		}

	}

}
