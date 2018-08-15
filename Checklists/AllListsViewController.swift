//
//  AllListsViewController.swift
//  Checklists
//
//  Created by Kim Yeon Jeong on 2018/8/14.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class AllListsViewController: UITableViewController {
    
    var lists = [Checklist]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Enable large titles
        navigationController?.navigationBar.prefersLargeTitles = true

    // Add placeholder data
    var list = Checklist(name: "Birthdays")
    lists.append(list)
    
    list = Checklist(name: "Groceries")
    lists.append(list)
    
    list = Checklist(name: "Cool Apps")
    lists.append(list)
    
    list = Checklist(name: "To Do")
    lists.append(list)
}
    
    override func tableView(_ tableView: UITableView,
                numberOfRowsInSection section: Int) -> Int {
            return lists.count
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
    
 // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = makeCell(for: tableView)
        // Update cell informaiton
        let checklist = lists[indexPath.row]
        cell.textLabel!.text = checklist.name
        cell.accessoryType = .detailDisclosureButton
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowChecklist", sender: nil)
    }
}
