//
//  cellTableViewheaderView.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/8.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit
protocol suitHeaderDelegate {
    func exchageBtnOnclicked()
}
class cellTableViewheaderView: UITableViewHeaderFooterView {
    var delegate: suitHeaderDelegate?
    var model: Items? {
        didSet {
            suitTitle_label.text = model!.suitLabel
            suitDesc_label.text = model!.sTip
            exchange_btn.setTitle(model!.entryLabel, for: .normal)
        }
    }
    @IBOutlet weak var suitTitle_label: UILabel!
    @IBOutlet weak var suitDesc_label: UILabel!
    @IBOutlet weak var exchange_btn: UIButton!
    @IBAction func exchageBtnOnclicked() {
        delegate?.exchageBtnOnclicked()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        suitTitle_label.layer.borderColor = UIColor.red.cgColor
        suitTitle_label.layer.borderWidth = 1.0
        suitTitle_label.layer.cornerRadius = 3
        suitTitle_label.layer.masksToBounds = true
    }
}
