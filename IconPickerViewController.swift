//
//  IconPickerViewController.swift
//  Checklists
//
//  Created by Kim Yeon Jeong on 2018/8/20.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UIKit
protocol IconPickerViewControllerDelegate: class {
    func iconPicker(_ picker: IconPickerViewController,didPick iconName: String)
}
class IconPickerViewController: UITableViewController {
    weak var delegate: IconPickerViewControllerDelegate?
    let icons = [ "No Icon", "Appointments", "Birthdays", "Chores",
                  "Drinks", "Folder", "Groceries", "Inbox", "Photos", "Trips" ]
}

// MARK:- Table View Delegates
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return icons.count
}

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "IconCell", for: indexPath)
    
    let iconName = icons[indexPath.row]
    cell.textLabel!.text = iconName
    cell.imageView!.image = UIImage(named: iconName)
    
    return cell
}
