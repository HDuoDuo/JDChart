//
//  chartHeaderView.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/3.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit
protocol headerDelegate: NSObjectProtocol {
    func btnOnclicked()
}
class chartHeaderView: UITableViewHeaderFooterView {
    //代理
    weak var delegate: headerDelegate?
    
    override func draw(_ rect: CGRect) {
        setupUI(rect)
    }
    //MARK UI
    func setupUI(_ rect: CGRect) {
        print(rect)
        //btn
        let button = UIButton.init(frame: CGRect.init(x: 10, y: 5, width: 20, height: 20))
        button.setBackgroundImage(UIImage(named: "rankhome-icarousel-other"), for: .normal)
        button.setBackgroundImage(UIImage.init(named: "syncart_round_check2New"), for: .selected)
        button.addTarget(self, action: #selector(chartHeaderView.btnOnclicked(sender:)), for: .touchUpInside)
        contentView.addSubview(button)
        //label
        let label = UILabel.init(frame: CGRect.init(x: 40, y: 5, width: rect.size.width-90, height: 20))
        label.text = "京东购物"
        contentView.addSubview(label)
    }
    func btnOnclicked(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        delegate?.btnOnclicked()
    }
}
