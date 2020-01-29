//  TaskTableViewController.swift
//  Project6
//
//  Created by emma on 1/17/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//
import Foundation
import UIKit


class TaskTableViewController: UITableViewController {
    let defaults = UserDefaults.standard
    
    var taskNames: [String] = []
    var taskDescriptions: [String] = []
    var taskDeadlines: [String] = []
    var tasksFinished: [String] = []
    
override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
override func viewDidAppear(_ annimated: Bool){
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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "myCellIdentifier", for: indexPath)
        
        if let cellWithOtherName = cell as? InitialTableViewCell {
            cellWithOtherName.taskNameLabel.text = taskNames[indexPath.row]
            cellWithOtherName.taskDescription.text = taskDescriptions[indexPath.row]
            
            cellWithOtherName.taskDeadline.text = taskDeadlines[indexPath.row]
            
            return cellWithOtherName
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            //add to deleted tasks array
            tasksFinished.append(taskNames[indexPath.row])
            tasksFinished.append(taskDescriptions[indexPath.row])
            tasksFinished.append(taskDeadlines[indexPath.row])

            
            //delete item from tasks array
            taskNames.remove(at: indexPath.row)
            taskDescriptions.remove(at: indexPath.row)
            taskDeadlines.remove(at: indexPath.row)

            
            //update user defaults here
            defaults.set(taskNames, forKey: "taskNames")
            defaults.set(taskDescriptions, forKey: "taskNames")
            defaults.set(taskDeadlines, forKey: "taskNames")
            defaults.set(tasksFinished, forKey: "tasksFinished")

            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }
    }
}
