//
//	Vendor.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Vendor : NSObject {

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
}
