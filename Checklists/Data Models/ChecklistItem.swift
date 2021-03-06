//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Kim Yeon Jeong on 2018/8/7.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UserNotifications

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
    
    func scheduleNotification() {
        removeNotification()
        if shouldRemind && dueDate > Date() {
            // 1
            let content = UNMutableNotificationContent()
            content.title = "Reminder:"
            content.body = text
            content.sound = UNNotificationSound.default()
            // 2
            let calendar = Calendar(identifier: .gregorian)
            let components = calendar.dateComponents([.month, .day, .hour, .minute],from: dueDate)
            // 3
            let trigger = UNCalendarNotificationTrigger(dateMatching: components,repeats: false)
                
            // 4
            let request = UNNotificationRequest(
                identifier: "\(itemID)", content: content, trigger: trigger)
            // 5
            
            let center = UNUserNotificationCenter.current()
            center.add(request)
            
            print("Scheduled: \(request) for itemID: \(itemID)")
        }
    }
    
    func removeNotification() {
        let center = UNUserNotificationCenter.current()
        center.removePendingNotificationRequests(withIdentifiers: ["\(itemID)"])
    }
    
    deinit {
        removeNotification()
    }
    
}
