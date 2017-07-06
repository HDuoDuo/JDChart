//
//	CartInfo.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class CartInfo : NSObject {

	var vendors : [Vendor]!
    
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
        vendors = [Vendor]()
		let vendorsArray = json["vendors"].arrayValue
		for vendorsJson in vendorsArray{
			let value = Vendor(fromJson: vendorsJson)
			vendors.append(value)
		}
	}
}
