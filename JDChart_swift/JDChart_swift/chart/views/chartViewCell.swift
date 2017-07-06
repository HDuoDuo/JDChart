//
//  chartViewCell.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/6.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit

class chartViewCell: UITableViewCell {
    
    var model: Sorted? {
        didSet {
            //绘制cell
            self.setupUI(model: model!)
        }
    }
    func setupUI(model: Sorted) {
        if model.itemType == 1 {
            //没有suitView
            
        }else {//有suitView
            
        }
    }
    //创建suitView
    func setupSuit() {
        let suitView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
        
        let suitLabel = UILabel.init(frame: CGRect(x: 8, y: 5, width: 20, height: 20))
        suitLabel.layer.borderColor = UIColor.red.cgColor
        suitLabel.layer.borderWidth = 1
        suitLabel.text = "换购"
        suitView.addSubview(suitLabel)
        
        contentView.addSubview(suitView)
    }
    //创建gift
    func setupGifts(gifts: [AnyObject]) {
        //记录下一个gift的origin的y值
        var giftY: CGFloat = 90
        for gift in gifts {
            let giftView = UIView.init(frame: CGRect.init(x: 0, y: giftY, width: UIScreen.main.bounds.size.width, height: 50))
            
            let giftLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 60, height: 20))
            giftLabel.text = "赠品"
            
            giftView.addSubview(giftLabel)
            
            giftY += 50
            print(gift)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
