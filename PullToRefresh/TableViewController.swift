//
//  TableViewController.swift
//  PullToRefresh
//
//  Created by Luyen on 10/27/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let getDataSource = SplitDataSource()
    let getDelegate = SplitDelegate()
    var refresher: UIRefreshControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = getDelegate
        tableView.dataSource = getDataSource
        refresher = UIRefreshControl()
        refresher.attributedTitle = NSAttributedString(string: "Pull To Refresh")
        refresher.addTarget(self, action: #selector(TableViewController.populate), for: UIControlEvents.valueChanged)
        tableView.addSubview(refresher)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func populate() {
        let emptyNumber = Array(1...10)
        for i in emptyNumber.reversed() {
            getDataSource.arrayNumber.append(i)
        }
        tableView.reloadData()
        refresher.endRefreshing()
    }
}

