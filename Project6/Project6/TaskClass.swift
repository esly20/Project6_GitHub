//
//  TaskClass.swift
//  Project6
//
//  Created by student on 1/27/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//

import Foundation

class Task{
    var name: String
    var description: String
    var deadline: Date
    var priotity: Bool
    
    init(name: String, description: String, deadline: Date, priotity: Bool){
        self.name = name
        self.description = description
        self.deadline = deadline
        self.priotity = priotity
    }
}
