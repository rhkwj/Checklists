//
//  AllListsViewController.swift
//  Checklists
//
//  Created by Kim Yeon Jeong on 2018/8/14.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class AllListsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView,
                numberOfRowsInSection section: Int) -> Int {
            return 3
    }
    
    // MARK:- Private Methods
    func makeCell(for tableView: UITableView) -> UITableViewCell {
        let cellIdentifier = "Cell"
        if let cell =
            tableView.dequeueReusableCell(withIdentifier: cellIdentifier) {
            return cell
        } else {
            return UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = makeCell(for: tableView)
        cell.textLabel!.text = "List \(indexPath.row)"
        return cell
    }
    
}
