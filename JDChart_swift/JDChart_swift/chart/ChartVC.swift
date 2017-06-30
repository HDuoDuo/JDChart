//
//  ChartVC.swift
//  JDChart_swift
//
//  Created by liuhang on 17/6/30.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit

class ChartVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK UI
        setupUI()
    }
    func setupUI() {
        //UIBarButton   left
        self.title = "购物车"
        let navItem = UIBarButtonItem.init(barButtonSystemItem: .cancel, target: self, action: #selector(ChartVC.backVC))
        navigationItem.leftBarButtonItem = navItem
        //right
        let editItem = UIBarButtonItem.init(title: "编辑", style: .plain, target: self, action: #selector(ChartVC.edit))
        let messageItem = UIBarButtonItem.init(title: "消息", style: .plain, target: self, action: #selector(ChartVC.message))
        navigationItem.rightBarButtonItems = [editItem,messageItem]
    }
    func message() {
        print("点击消息")
    }
    func edit() {
        print("点击编辑")

    }
    //返回按钮的点击
    func backVC()  {
        dismiss(animated: true, completion: nil)
    }
}
