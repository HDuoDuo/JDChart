//
//  ViewController.swift
//  JDChart_swift
//
//  Created by liuhang on 17/6/30.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI() {
        let button = UIButton.init()
        button.frame = CGRect.init(x: 60, y: 60, width: 80, height: 50)
        button.backgroundColor = UIColor.black
        button.setTitle("购物车", for: .normal)
        button.addTarget(self, action: #selector(ViewController.onClicked), for: .touchUpInside)
        view.addSubview(button)
    }
    //按钮的点击
    func onClicked() {
        let chartVC = ChartVC()
        let nav = UINavigationController.init(rootViewController: chartVC)
        chartVC.view.backgroundColor = UIColor.gray
        present(nav, animated: true, completion: nil)
    }
}

