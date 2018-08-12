//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Kim Yeon Jeong on 2018/8/7.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
