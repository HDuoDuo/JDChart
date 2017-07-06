//
//  chartVM.swift
//  JDChart_swift
//
//  Created by liuhang on 17/6/30.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit

class chartVM: NSObject {
    
    var venders: [Vendor] = []
    
    func getChartData(completion: @escaping (_ venders: [Vendor])->()) {
        netManager.shared.getChartList {[weak self] (response) in
            self?.venders = response.vendors
            completion(response.vendors)
        }
    }
}
