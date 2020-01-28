//  TaskTableViewController.swift
//  Project6
//
//  Created by emma on 1/17/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//
import UIKit

class TaskTableViewController: UITableViewController {
    let defaults = UserDefaults.standard
    
    var taskNames: [String] = []
    var taskDescriptions: [String] = []
    var taskDeadlines: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        if let taskNamesData =
            defaults.array(forKey: "taskNames") as? [String] {
            taskNames = taskNamesData
        } else {
            defaults.set([String](), forKey: "taskNames")
        }
        if let taskDescriptionData = defaults.array(forKey: "taskDescriptions") as? [String] {
            taskDescriptions = taskDescriptionData
        } else {
            defaults.set([String](), forKey: "taskDescriptions")
        }
        if let taskDeadlinesData = defaults.array(forKey: "taskDeadlines") as? [String] {
            taskDeadlines = taskDeadlinesData
        } else {
            defaults.set([String](), forKey: "taskDeadlines")
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "initialTableViewCell", for: indexPath)
        if let newCell = cell as? InitialTableViewCell {
            newCell.taskNameLabel.text = taskNames[indexPath.row]
            
            newCell.taskDescription.text = taskDescriptions[indexPath.row]
           
            newCell.taskDeadline.text = taskDeadlines[indexPath.row]

                   return newCell
               }
        return cell
    }
           
}
