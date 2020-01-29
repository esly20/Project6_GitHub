//
//  InitialTableViewCell.swift
//  Project6
//
//  Created by emma on 1/17/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//

import UIKit

class InitialTableViewCell: UITableViewCell {
  
    @IBOutlet var taskNameLabel: UILabel!
    
    @IBOutlet var taskDescription: UILabel!
    
    @IBOutlet var taskDeadline: UILabel!
        
    override func awakeFromNib() {
            super.awakeFromNib()
        }
    
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
        }

    }

