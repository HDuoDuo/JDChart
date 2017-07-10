//
//	Sorted.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Sorted : NSObject {

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

}
