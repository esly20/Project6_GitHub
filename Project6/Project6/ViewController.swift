//
//  ViewController.swift
//  Project6
//
//  Created by emma on 1/17/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    var points: Int = 0
    
    @IBOutlet var phrasesLabel: UILabel!
    @IBOutlet var jokeLabel: UILabel!
    @IBOutlet var punchlineLabel: UILabel!
    
    var encouragingPhrases: [String] = ["You Got This!", "Almost There", "Don't Give Up", "The End Is Near", "You're So Close", "Anything Is Possible", "You Will Make It", "You're a Star", "You're Doing Great", "Keep Going", "Go You!"]
    var randomInt = Int.random(in: 0...10)
    
    //jokes come from readers digest
    var jokes: [String] = ["What’s the best thing about Switzerland?", "Did you hear about the mathematician who’s afraid of negative numbers?", "Why do we tell actors to 'break a leg?'", "Yesterday I saw a guy spill all his Scrabble letters on the road. I asked him:", "What do you call a lazy baby kangaroo?", "What do you call an alligator wearing a vest?"]
    var punchlines: [String] = ["I don’t know, but the flag is a big plus.", "He’ll stop at nothing to avoid them.", "Because every play has a cast.", "What’s the word on the street?", "A pouch potato.", "An Investigator!" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phrasesLabel.text = encouragingPhrases[randomInt]
        points = defaults.integer(forKey: "points")

        if points == 25{
        jokeLabel.text = jokes[0]
        punchlineLabel.text = ""

        }
        else if points == 50{
        jokeLabel.text = jokes[0]
            punchlineLabel.text = punchlines[0]
        }
        else if points == 75{
            jokeLabel.text = jokes[1]
            punchlineLabel.text = ""

        }
        else if points == 100{
            jokeLabel.text = jokes[1]
            punchlineLabel.text = punchlines[1]
        }
        else if points == 125{
            jokeLabel.text = jokes[2]
            punchlineLabel.text = ""

        }
        else if points == 150{
            jokeLabel.text = jokes[2]
            punchlineLabel.text = punchlines[2]
        }
        else if points == 175{
            jokeLabel.text = jokes[3]
            punchlineLabel.text = ""

        }
        else if points == 200{
            jokeLabel.text = jokes[3]
            punchlineLabel.text = punchlines[3]
        }
        else if points == 225{
            jokeLabel.text = jokes[4]
            punchlineLabel.text = ""

        }
        else if points == 250{
            jokeLabel.text = jokes[4]
            punchlineLabel.text = punchlines[4]
        }
        else if points == 275{
            jokeLabel.text = jokes[5]
            punchlineLabel.text = ""
        }
        else if points == 300{
            jokeLabel.text = jokes[5]
            punchlineLabel.text = punchlines[5]
        }

    }
}

