//
//  TableViewCell.swift
//  RealmApp
//
//  Created by Олеся Егорова on 03.02.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit

extension UITableViewCell {
    func setCellContent(with taskList: TaskList) {
        var content = self.defaultContentConfiguration()
        
        content.text = taskList.name
        
        let currentTasks = taskList.tasks.filter("isComplete = false")
        
        if currentTasks.isEmpty {
            content.secondaryText = ""
            accessoryType = .checkmark
        } else if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else {
            content.secondaryText = "\(currentTasks.count)"
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}
