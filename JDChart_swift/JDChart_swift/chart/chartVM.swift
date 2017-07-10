//
//  chartVM.swift
//  JDChart_swift
//
//  Created by liuhang on 17/6/30.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit

class chartVM: NSObject {
    
    var venders: [Vendor]?
    
    func getChartData(completion: @escaping (_ isSuccess: Bool)->()) {
        netManager.shared.getChartList {[weak self] (response) in
            self?.venders = response.vendors
            completion(true)
        }
    }
//    //数据处理
//    func chartListData(venders: [Vendor]) {
//        for vender in venders {
//            var sectionArr: [AnyObject] = []
//            for sorted in vender.sorted {
//                if sorted.itemType == 1 {
//                sectionArr.append(sorted.item!)
//                }else {
//                sectionArr.append(sorted.items!)
//    
//                }
//            }
//            cellModel.append(sectionArr)
//        }
//    }
}
