//
//  mainCell.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/8.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit

class mainCell: UITableViewCell,UITableViewDelegate,UITableViewDataSource {
    var tableView: UITableView?    
    var itemsModel: Items? {
        didSet {
            tableView?.reloadData()
        }
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        tableView = UITableView()
        tableView!.isScrollEnabled = false
        tableView!.delegate = self
        tableView!.dataSource = self
        tableView!.separatorStyle = .none
        //注册
        tableView!.register(UINib.init(nibName: "chartViewCell", bundle: nil), forCellReuseIdentifier: "reuseChartViewCell")
        tableView!.register(UINib.init(nibName: "cellTableViewHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "cellTableViewHeaderView")
        contentView.addSubview(tableView!)
    }
    override func draw(_ rect: CGRect) {
        tableView!.frame = rect
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var view: UIView?
        if itemsModel == nil {
            view = nil
        }else {
        view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "cellTableViewHeaderView")
        }
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return itemsModel==nil ? 0 : itemsModel!.cellHeaderHeight
    }
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsModel==nil ? 0 : itemsModel!.items.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return itemsModel==nil ? 0 : itemsModel!.items[indexPath.row].itemCellHeight
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = itemsModel?.items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseChartViewCell", for: indexPath) as! chartViewCell
        cell.itemModel = model
        return cell
    }

    
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
