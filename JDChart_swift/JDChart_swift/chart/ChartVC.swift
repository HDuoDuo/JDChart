//
//  ChartVC.swift
//  JDChart_swift
//
//  Created by liuhang on 17/6/30.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit
import Alamofire
class ChartVC: UIViewController,UITableViewDelegate,UITableViewDataSource,headerDelegate {
    var viewModel = chartVM()
    var tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height), style: UITableViewStyle.plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK UI
        setupUI()
    }
    
    
    func setupUI() {
        //uicollectionView
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 50
        tableView.register(UINib.init(nibName: "chartViewCell", bundle: nil), forCellReuseIdentifier: "reuseChartCell")
        tableView.register(chartHeaderView.self, forHeaderFooterViewReuseIdentifier: "reuseHeaderView")
        //UIBarButton_left
        self.title = "购物车"
        let navItem = UIBarButtonItem.init(barButtonSystemItem: .cancel, target: self, action: #selector(ChartVC.backVC))
        navigationItem.leftBarButtonItem = navItem
        //UIBarButton_right
        let editItem = UIBarButtonItem.init(title: "编辑", style: .plain, target: self, action: #selector(ChartVC.edit))
        let messageItem = UIBarButtonItem.init(title: "消息", style: .plain, target: self, action: #selector(ChartVC.message))
        navigationItem.rightBarButtonItems = [editItem,messageItem]
    }
    
    
    
    
    //MARK  UITableViewDelegate,UITableViewDataSource
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "reuseHeaderView") as! chartHeaderView
        headerView.delegate = self
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseChartCell", for: indexPath)
        return cell
    }
    
    
    
    
    
    //headerDelegate
    func btnOnclicked() {
        print("代理按钮就点击了")
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
