//
//  NewTaskViewController.swift
//  Project6
//
//  Created by student on 1/22/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//

import UIKit
import Foundation

class NewTaskViewController: UIViewController {
    let defaults = UserDefaults.standard
    var taskNames: [String] = []
    var taskDescriptions: [String] = []
    var taskDeadlines: [String] = []
    

    @IBOutlet var newTaskNameInput: UITextField!
    @IBOutlet var newTaskDescriptionInput: UITextField!
    @IBOutlet var newTaskDeadlineInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()        
   
         //to clear the user defaults
//        defaults.set([String](), forKey: "taskNames")
//        defaults.set([String](), forKey: "taskDescriptions")
//        defaults.set([String](), forKey: "taskDeadlines")
    }


    @IBAction func doneButtonPressed(_ sender: UIButton) {
//loading the pre-existing user deafults
        if let taskNamesData =
            defaults.array(forKey: "taskNames") as? [String] {
            // successfully found the saved data!
            taskNames = taskNamesData
        } else {
            // No student data saved (first time only, probably!
            defaults.set([String](), forKey: "taskNames")
        }
        if let taskDescriptionData = defaults.array(forKey: "taskDescriptions") as? [String] {
            // successfully found the saved data!
            taskDescriptions = taskDescriptionData
        } else {
            // No student data saved (first time only, probably!
            defaults.set([String](), forKey: "taskDescriptions")
        }
        if let taskDeadlinesData = defaults.array(forKey: "taskDeadlines") as? [String] {
            // successfully found the saved data!
            taskDeadlines = taskDeadlinesData
        } else {
            // No student data saved (first time only, probably!
            defaults.set([String](), forKey: "taskDeadlines")
        }
        //adding the new infomation to use deafualts
        let newTaskNameText = newTaskNameInput.text!
            taskNames.append(newTaskNameText)
            defaults.set(taskNames, forKey: "taskNames")
                
            let newTaskDescriptiontext = newTaskDescriptionInput.text!
            taskDescriptions.append(newTaskDescriptiontext)
            defaults.set(taskDescriptions, forKey: "taskDescriptions")
                
            let newTaskDeadline = newTaskDeadlineInput.text!
            taskDeadlines.append(newTaskDeadline)
            defaults.set(taskDeadlines, forKey: "taskDeadlines")
        
         
//        print(defaults.array(forKey: "taskNames"))
//        print(defaults.array(forKey: "taskDescriptions"))
//        print(defaults.array(forKey: "taskDeadlines"))
        if let tvc = navigationController?.viewControllers.first as? TaskTableViewController {
            tvc.viewDidAppear(true)
        }
        navigationController?.popViewController(animated: true)
    }
}
