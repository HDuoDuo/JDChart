//
//	AbCard.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class AbCard : NSObject, NSCoding{

	var a : String!
	var b : String!
	var c : String!
	var d : String!
	var e : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		a = json["1"].stringValue
		b = json["2"].stringValue
		c = json["3"].stringValue
		d = json["4"].stringValue
		e = json["5"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if a != nil{
			dictionary["1"] = 1
		}
		if b != nil{
			dictionary["2"] = 2
		}
		if c != nil{
			dictionary["3"] = 3
		}
		if d != nil{
			dictionary["4"] = 4
		}
		if e != nil{
			dictionary["5"] = 5
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         a = aDecoder.decodeObject(forKey: "1") as? String
         b = aDecoder.decodeObject(forKey: "2") as? String
         c = aDecoder.decodeObject(forKey: "3") as? String
         d = aDecoder.decodeObject(forKey: "4") as? String
         e = aDecoder.decodeObject(forKey: "5") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if a != nil{
			aCoder.encode(1, forKey: "1")
		}
		if b != nil{
			aCoder.encode(2, forKey: "2")
		}
		if c != nil{
			aCoder.encode(3, forKey: "3")
		}
		if d != nil{
			aCoder.encode(4, forKey: "4")
		}
		if e != nil{
			aCoder.encode(5, forKey: "5")
		}

	}

}
