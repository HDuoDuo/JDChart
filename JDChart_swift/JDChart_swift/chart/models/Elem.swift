//
//	Elem.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Elem : NSObject, NSCoding{

	var elemType : Int!
	var imgUrl : String!
	var text : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		elemType = json["elemType"].intValue
		imgUrl = json["imgUrl"].stringValue
		text = json["text"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if elemType != nil{
			dictionary["elemType"] = elemType
		}
		if imgUrl != nil{
			dictionary["imgUrl"] = imgUrl
		}
		if text != nil{
			dictionary["text"] = text
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         elemType = aDecoder.decodeObject(forKey: "elemType") as? Int
         imgUrl = aDecoder.decodeObject(forKey: "imgUrl") as? String
         text = aDecoder.decodeObject(forKey: "text") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if elemType != nil{
			aCoder.encode(elemType, forKey: "elemType")
		}
		if imgUrl != nil{
			aCoder.encode(imgUrl, forKey: "imgUrl")
		}
		if text != nil{
			aCoder.encode(text, forKey: "text")
		}

	}

}
