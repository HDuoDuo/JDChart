//
//  redBoderLabel.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/5.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit

class redBoderLabel: UILabel {

    override func draw(_ rect: CGRect) {
        let boderLayer = layer
        boderLayer.borderColor = UIColor.red.cgColor
        boderLayer.borderWidth = 1
        layer.addSublayer(boderLayer)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
