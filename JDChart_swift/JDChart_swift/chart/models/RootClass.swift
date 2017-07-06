//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class RootClass : NSObject {

	var cartInfo : CartInfo!

	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		let cartInfoJson = json["cartInfo"]
		if !cartInfoJson.isEmpty{
			cartInfo = CartInfo(fromJson: cartInfoJson)
		}
    }
}
