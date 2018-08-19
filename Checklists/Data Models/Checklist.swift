//
//  Checklist.swift
//  Checklists
//
//  Created by Kim Yeon Jeong on 2018/8/15.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import UIKit
class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }
    
}
