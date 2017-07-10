//
//  chartViewCell.swift
//  JDChart_swift
//
//  Created by liuhang on 17/7/6.
//  Copyright © 2017年 liuhang. All rights reserved.
//

import UIKit

class chartViewCell: UITableViewCell,UITableViewDelegate,UITableViewDataSource {
    var tableView: UITableView?
    var itemModel: Item? {
        didSet {
            desc_good.text = itemModel!.weight
            title_good.text = itemModel!.name
            price_good.text = itemModel!.priceShow
            num_good.text = String.init(format: "%d", itemModel!.num)
            tableView?.reloadData()
        }
    }
    
    @IBOutlet weak var choice_btn: UIButton!
    @IBOutlet weak var img_good: UIImageView!
    @IBOutlet weak var desc_good: UILabel!
    @IBOutlet weak var title_good: UILabel!
    @IBOutlet weak var price_good: UILabel!
    @IBOutlet weak var num_good: UILabel!

    
    @IBAction func choiceBtnOnclicked(_ sender: UIButton) {
    }
    @IBAction func service_choice() {
    }
    @IBAction func add_num() {
    }
    @IBAction func reduce_num() {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    func setupUI() {
        tableView = UITableView()
        tableView!.isScrollEnabled = false
        tableView!.delegate = self
        tableView!.dataSource = self
        tableView!.separatorStyle = .none
        //注册
        tableView!.register(UINib(nibName: "cellFooterCell", bundle: nil), forCellReuseIdentifier: "reuseFooterCell")
        contentView.addSubview(tableView!)
    }

    override func draw(_ rect: CGRect) {
        
         tableView!.frame = CGRect.init(x: 0, y: 100, width: rect.size.width, height: rect.size.height-100)
    }
    //MARK  UITableViewDelegate,UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemModel==nil ? 0 : (itemModel!.gifts.count+(itemModel!.canSelectPromotions.count>0 ? 1 : 0))
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return itemModel==nil ? 0 : itemModel!.cellFooterHeight
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseFooterCell", for: indexPath) as! cellFooterCell
        if itemModel != nil {
            if indexPath.row >= (itemModel?.gifts.count)! {
                cell.model = itemModel!.canSelectPromotions[indexPath.row-itemModel!.gifts.count]
            }else {
                cell.model = itemModel!.gifts[indexPath.row]
            }
        }        
        return cell
    }

    

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
