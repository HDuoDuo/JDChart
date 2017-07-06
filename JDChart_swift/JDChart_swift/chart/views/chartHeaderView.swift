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
    var  name_store = UILabel()//商铺名称
    var img_store = UIImageView()
    
    var vender: Vendor? {
        didSet {
            name_store.text = vender!.shopName
            let imgStr = vender!.vendorType == 0 ? "serviceComment_pop" : "serviceComment_jd"
            img_store.image = UIImage(named: imgStr)
        }
    }
    
    override func draw(_ rect: CGRect) {
        setupUI(rect)
    }
    //MARK UI
    func setupUI(_ rect: CGRect) {
        print(rect)
        //btn
        let button_choice = UIButton.init(frame: CGRect.init(x: 8, y: 10, width: 22, height: 22))
        button_choice.setBackgroundImage(UIImage(named: "rankhome-icarousel-other"), for: .normal)
        button_choice.setBackgroundImage(UIImage.init(named: "syncart_round_check2New"), for: .selected)
        button_choice.addTarget(self, action: #selector(chartHeaderView.btnOnclicked(sender:)), for: .touchUpInside)
        contentView.addSubview(button_choice)
        //iamgeView
        img_store.frame = CGRect.init(x: 40, y: 10, width: 22, height: 22)
        contentView.addSubview(img_store)
        //label
        name_store.frame = CGRect(x: 66, y: 10, width: rect.size.width-50, height: 22)
        contentView.addSubview(name_store)
    }
    func btnOnclicked(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        delegate?.btnOnclicked()
    }
}
