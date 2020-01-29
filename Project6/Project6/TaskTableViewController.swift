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
    //used to delete tasks from the user defaults
    var taskNamesFinished: [String] = []
    var taskDescriptionsFinished: [String] = []
    var taskDeadlinesFinished: [String] = []

    var points: Int = 0
    
override func viewDidLoad() {
        super.viewDidLoad()
        points = defaults.integer(forKey: "points")
        
    }
    
override func viewDidAppear(_ annimated: Bool){
    //loading the data from user defualts
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
        //WHY WON'T THIS WORk!?!?!?!?!
        if let cellWithOtherName = cell as? InitialTableViewCell {
            cellWithOtherName.taskNameLabel.text = taskNames[indexPath.row]
            cellWithOtherName.taskDescription.text = taskDescriptions[indexPath.row]
            cellWithOtherName.taskDeadline.text = taskDeadlines[indexPath.row]
            
            return cellWithOtherName
        }
        return cell
    }
    
    // Adapted from https://medium.com/ios-os-x-development/enable-slide-to-delete-in-uitableview-9311653dfe2 and help from Ryan
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            //deleting from user defaults
            taskNamesFinished.append(taskNames[indexPath.row])
            taskDescriptionsFinished.append(taskDescriptions[indexPath.row])
            taskDeadlinesFinished.append(taskDeadlines[indexPath.row])

            defaults.set(taskNames, forKey: "taskNames")
            defaults.set(taskDescriptions, forKey: "taskNames")
            defaults.set(taskDeadlines, forKey: "taskNames")
            defaults.set(taskNamesFinished, forKey: "taskNamesFinished")
            defaults.set(taskDeadlinesFinished, forKey: "taskDeadlinesFinished")
            defaults.set(taskDescriptionsFinished, forKey: "taskDescriptionsFinished")
           
            // deleting form tableView
            self.taskNames.remove(at: indexPath.row)
            self.taskDescriptions.remove(at: indexPath.row)
            self.taskDeadlines.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            points += 25
            points = defaults.integer(forKey: "points")

    }
}
}
