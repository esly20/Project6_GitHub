//
//  ViewController.swift
//  Project6
//
//  Created by emma on 1/17/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var phrasesLabel: UILabel!
    var encouragingPhrases: [String] = ["You Got This!", "Almost There", "Don't Give Up", "The End Is Near", "You're So Close", "Anything Is Possible", "You Will Make It", "You're a Star", "Great Things Are Yet To Come"]
    var randomInt = Int.random(in: 0...8)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phrasesLabel.text = encouragingPhrases[randomInt]
        }
}

