//
//  cellFooterVC.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/8.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit

class cellFooterVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var tableView: UITableView?
    var dataArr: [AnyObject] = []
    
    var item: Item? {
        didSet {
            //处理数据
            preoareDataArr(item: item!)
            tableView!.reloadData()
        }
    }
    //数据处理
    func preoareDataArr(item: Item) {
        for (index,gift) in item.gifts.enumerated() {
            if index == 0 {
                gift.isNumberOne = true
            }
            dataArr.append(gift)
        }
        for (index,promotion) in item.canSelectPromotions.enumerated() {
            if index == 0 {
                promotion.isNumberOne = true
            }
            dataArr.append(promotion)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI() {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        tableView!.delegate = self
        tableView!.dataSource = self
        //注册
        tableView!.register(UINib.init(nibName: "cellFooterCell", bundle: nil), forCellReuseIdentifier: "reuseCellFooterCell")
        view.addSubview(tableView!)
    }
    //MARK UITableViewDelegate,UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseChartViewCell", for: indexPath)
        
        return cell
        
    }
}
