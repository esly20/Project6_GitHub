//
//  NewTaskViewController.swift
//  Project6
//
//  Created by student on 1/22/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//

import UIKit

class NewTaskViewController: UIViewController {
    let defaults = UserDefaults.standard
    @IBOutlet var newTaskNameInput: UITextField!
    @IBOutlet var newTaskDescriptionInput: UITextField!
    @IBOutlet var newTaskDeadlineInput: UITextField!

    var taskNames: [String] = []
    var taskDescriptions: [String] = []
    var taskDeadlines: [String] = []


    override func viewDidLoad() {
        super.viewDidLoad()
       
        let newTaskNametext = newTaskNameInput.text!
        taskNames.append(newTaskNametext)
        // Save the new UserDefaults
        defaults.set(taskNames, forKey: "taskNames")
        print("\(taskNames)")
        
        let newTaskDescriptiontext = newTaskDescriptionInput.text!
        taskDescriptions.append(newTaskDescriptiontext)
        defaults.set(taskDescriptions, forKey: "taskDescriptions")

        
        let newTaskDeadline = newTaskDeadlineInput.text!
        taskDeadlines.append(newTaskDeadline)
        defaults.set(taskDeadlines, forKey: "taskDeadlines")

    }


    @IBAction func doneCreatingTaskPressed(_ sender: UIBarButtonItem) {
        if let taskNameData = defaults.array(forKey: "taskNames") as? [String] {
            // successfully found the saved data!
            taskNames = taskNameData
        }else {
            // No student data saved (first time only, probably!
        defaults.set([String](), forKey: "taskNames")
        }
        
        if let taskDescriptionData = defaults.array(forKey: "taskDescriptions") as? [String] {
            // successfully found the saved data!
            taskDescriptions = taskDescriptionData
        }else {
            // No student data saved (first time only, probably!
        defaults.set([String](), forKey: "taskDescriptions")
        }
        
        if let taskDeadlineData = defaults.array(forKey: "taskDeadlines") as? [String] {
            // successfully found the saved data!
            taskDeadlines = taskDeadlineData
        }else {
            // No student data saved (first time only, probably!
        defaults.set([String](), forKey: "taskDeadlines")
        }
        
        }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destinationVC = segue.destination as? TaskTableViewController {
        destinationVC.taskNames = taskNames
        destinationVC.taskDeadlines = taskDeadlines
        destinationVC.taskDescriptions = taskDescriptions


        }
    }
}
