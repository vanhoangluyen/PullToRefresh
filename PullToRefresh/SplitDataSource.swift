//
//  SplitDataSource.swift
//  PullToRefresh
//
//  Created by Luyen on 10/27/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import Foundation
import UIKit

class SplitDataSource: NSObject, UITableViewDataSource {
    var arrayNumber = Array(0...3)
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayNumber.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "luyen", for: indexPath)
        cell.textLabel?.text = String(arrayNumber[indexPath.row])
        return cell
    }
}
