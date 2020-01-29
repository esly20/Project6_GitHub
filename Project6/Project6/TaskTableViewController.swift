//  TaskTableViewController.swift
//  Project6
//
//  Created by emma on 1/17/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//
import UIKit
import Foundation

class TaskTableViewController: UITableViewController {
    let defaults = UserDefaults.standard
    
    var taskNamesList: [String] = []
    var taskDescriptionsList: [String] = []
    var taskDeadlinesList: [String] = []
    
//    let doneText: String = "Congratulations on finishing a Task! Don't Stop Now!"
override func viewDidLoad() {
        super.viewDidLoad()
        print(taskNamesList)
        print(taskDescriptionsList)
        print(taskDeadlinesList)
        
        if let taskNamesData =
            defaults.array(forKey: "taskNames") as? [String] {
            taskNamesList = taskNamesData
        print("Data Loaded")
        
        } else {
            defaults.set([String](), forKey: "taskNames")
        }
        if let taskDescriptionData = defaults.array(forKey: "taskDescriptions") as? [String] {
            taskDescriptionsList = taskDescriptionData
        } else {
            defaults.set([String](), forKey: "taskDescriptions")
        }
        if let taskDeadlinesData = defaults.array(forKey: "taskDeadlines") as? [String] {
            taskDeadlinesList = taskDeadlinesData
        } else {
            defaults.set([String](), forKey: "taskDeadlines")
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskNamesList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCellIdentifier", for: indexPath)
        
        if let cellWithOtherName = cell as? InitialTableViewCell {
            cellWithOtherName.taskNameLabel.text = taskNamesList[indexPath.row]
            cellWithOtherName.taskDescription.text = taskDescriptionsList[indexPath.row]
            
            cellWithOtherName.taskDeadline.text = taskDeadlinesList[indexPath.row]
            return cellWithOtherName
        }
        return cell
    }
}
