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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func doneCreatingTaskPressed(_ sender: UIBarButtonItem) {
        if let destinationVC = segue.destination as? TaskTableViewController{
        let newTaskNameText = newTaskNameInput.text!
            destinationVC.taskNameBeingAdded = newTaskNameText

            
            let newTaskDescriptiontext = newTaskDescriptionInput.text!
            destinationVC.taskDescriptionBeingAdded =  newTaskDescriptiontext

            
            let newTaskDeadline = newTaskDeadlineInput.text!
            destinationVC.taskDeadlineBeingAdded =  newTaskDeadline

        }
    }
}
