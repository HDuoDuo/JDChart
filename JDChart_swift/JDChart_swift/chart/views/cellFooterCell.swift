//
//  cellFooterCell.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/8.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit
protocol cellFooterDelegate: NSObjectProtocol {
    func access_btn_clicked(modelType: AnyObject)
}
class cellFooterCell: UITableViewCell {
    var delegate: cellFooterDelegate?
    @IBOutlet weak var access_btn: UIButton!
    @IBOutlet weak var desc_label: UILabel!
    @IBOutlet weak var tltle_label: UILabel!
    var model: AnyObject? {
        didSet {
            if let ModelTypeOne = model as? Gift {
                tltle_label.text = ModelTypeOne.isNumberOne ? "赠品" : "  "
                access_btn.setTitle("X1 >", for: .normal)
                desc_label.text = ModelTypeOne.Name
            }
            if let ModelTypeTwo = model as? canSelectGift {
                tltle_label.text = ModelTypeTwo.isNumberOne ? "优惠" : "  "
                access_btn.setTitle("修改", for: .normal)
                desc_label.text = ModelTypeTwo.title
            }
        }
    }
    
    @IBAction func access_btn_onclicked() {
        delegate?.access_btn_clicked(modelType: model!)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        
    }
    
}
