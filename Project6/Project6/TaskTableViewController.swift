//
//  TaskTableViewController.swift
//  Project6
//
//  Created by emma on 1/17/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {
    var taskList: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var taskNames: [String] = []
    var taskDescriptions: [String] = []
    var taskDeadlines: [String] = []

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return taskNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InitialTableViewCell", for: indexPath)
        if let cellWithOtherName = cell as? InitialTableViewCell {
            cellWithOtherName.taskNameLabel.text = taskNames[indexPath.row]
            cellWithOtherName.taskDescription.text = taskDescriptions[indexPath.row]
           
            cellWithOtherName.taskDeadline.text = taskDeadlines[indexPath.row]

                   return cellWithOtherName
               }
        // Configure the cell...
        return cell
    }
           
}
