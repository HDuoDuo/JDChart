//
//	PriceTop.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class PriceTop : NSObject, NSCoding{

	var t : String!
	var u : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		t = json["t"].stringValue
		u = json["u"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if t != nil{
			dictionary["t"] = t
		}
		if u != nil{
			dictionary["u"] = u
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         t = aDecoder.decodeObject(forKey: "t") as? String
         u = aDecoder.decodeObject(forKey: "u") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if t != nil{
			aCoder.encode(t, forKey: "t")
		}
		if u != nil{
			aCoder.encode(u, forKey: "u")
		}

	}

}
