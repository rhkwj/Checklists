//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Kim Yeon Jeong on 2018/8/7.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, Codable {
    var text = ""
    var checked = false
    var iconName = "Appointments"
    var dueDate = Date()
    var shouldRemind = false
    var itemID: Int
    
    func toggleChecked() {
        checked = !checked
    }
    
    override init() {
        itemID = DataModel.nextChecklistItemID()
        super.init()
    }

}
