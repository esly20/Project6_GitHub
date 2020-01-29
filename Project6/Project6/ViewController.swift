//
//  ViewController.swift
//  Project6
//
//  Created by emma on 1/17/20.
//  Copyright © 2020 Emma Slibeck. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    var points: Int = 0
    
    @IBOutlet var phrasesLabel: UILabel!
    @IBOutlet var jokeLabel: UILabel!
    @IBOutlet var punchlineLabel: UILabel!
    @IBOutlet var myJokes: UITextView!
    
    let explainText: String = "Unlock more Jokes by completing more TO-DO list items!"
    
    var encouragingPhrases: [String] = ["You Got This!", "Almost There!", "Don't Give Up!", "The End Is Near!", "You're So Close!", "Anything Is Possible!", "You Will Make It!", "You're a Star!", "You're Doing Great!", "Keep Going!", "Go You!", "Last Lap!", "Go Into The Light!"]
    var randomInt = Int.random(in: 0...12)
    
    //jokes come from readers digest
    var jokes: [String] = ["What’s the best thing about Switzerland?", "Did you hear about the mathematician who’s afraid of negative numbers?", "Why do we tell actors to 'break a leg?'", "Yesterday I saw a guy spill all his Scrabble letters on the road. I asked him:", "What do you call a lazy baby kangaroo?", "What do you call an alligator wearing a vest?", "What is an astronaut’s favorite place on a computer?", "What starts with a P, ends with an E, and has a million letters in it?", "I ate a clownfish last night..."]
    var punchlines: [String] = ["I don’t know, but the flag is a big plus.", "He’ll stop at nothing to avoid them.", "Because every play has a cast.", "What’s the word on the street?", "A pouch potato.", "An Investigator!", "The Space bar.", "Post Office", "It tasted funny" ]
    
    var jokesTotal: String = "My Jokes: \n"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
            override func viewDidAppear(_ animated: Bool) {
                let alert = UIAlertController(title: "Progress", message: self.explainText, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                phrasesLabel.text = encouragingPhrases[randomInt]
            if let pointsData =
                defaults.integer(forKey: "points") as? Int {
                points = pointsData
            } else {
                defaults.set([String](), forKey: "taskNames")
            }
            print(points)
                    if points == 25{
                    jokeLabel.text = jokes[0]
                    punchlineLabel.text = "Finish More Tasks To Reveal The Punchline"
                    }
                    else if points == 50{
                    jokeLabel.text = jokes[0]
                        punchlineLabel.text = punchlines[0]
                        jokesTotal = jokesTotal + "\(jokes[0])" + "\n"
                        jokesTotal = jokesTotal + "\(punchlines[0])" + "\n \n"
                    }
                    else if points == 75{
                        jokeLabel.text = jokes[1]
                        punchlineLabel.text = "Finish More Tasks To Reveal The Punchline"

                    }
                    else if points == 100{
                        jokeLabel.text = jokes[1]
                        punchlineLabel.text = punchlines[1]
                        jokesTotal = jokesTotal + "\(jokes[1])" + "\n"
                        jokesTotal = jokesTotal + "\(punchlines[1])" + "\n \n"
                    }
                    else if points == 125{
                        jokeLabel.text = jokes[2]
                        punchlineLabel.text = "Finish More Tasks To Reveal The Punchline"

                    }
                    else if points == 150{
                        jokeLabel.text = jokes[2]
                        punchlineLabel.text = punchlines[2]
                        jokesTotal = jokesTotal + "\(jokes[2])" + "\n"
                        jokesTotal = jokesTotal + "\(punchlines[2])" + "\n \n"
                    }
                    else if points == 175{
                        jokeLabel.text = jokes[3]
                        punchlineLabel.text = "Finish More Tasks To Reveal The Punchline"

                    }
                    else if points == 200{
                        jokeLabel.text = jokes[3]
                        punchlineLabel.text = punchlines[3]
                        jokesTotal = jokesTotal + "\(jokes[3])" + "\n"
                        jokesTotal = jokesTotal + "\(punchlines[3])" + "\n \n"
                    }
                    else if points == 225{
                        jokeLabel.text = jokes[4]
                        punchlineLabel.text = "Finish More Tasks To Reveal The Punchline"

                    }
                    else if points == 250{
                        jokeLabel.text = jokes[4]
                        punchlineLabel.text = punchlines[4]
                        jokesTotal = jokesTotal + "\(jokes[4])" + "\n"
                        jokesTotal = jokesTotal + "\(punchlines[4])" + "\n \n"
                    }
                    else if points == 275{
                        jokeLabel.text = jokes[5]
                        punchlineLabel.text = "Finish More Tasks To Reveal The Punchline"
                    }
                    else if points == 300{
                        jokeLabel.text = jokes[5]
                        punchlineLabel.text = punchlines[5]
                        jokesTotal = jokesTotal + "\(jokes[5])" + "\n"
                        jokesTotal = jokesTotal + "\(punchlines[5])" + "\n \n"
                    }else if points == 300{
                        jokeLabel.text = jokes[5]
                        punchlineLabel.text = punchlines[5]
                        jokesTotal = jokesTotal + "\(jokes[5])" + "\n"
                        jokesTotal = jokesTotal + "\(punchlines[5])" + "\n \n"
                    }else if points == 325{
                    jokeLabel.text = jokes[5]
                    punchlineLabel.text = "Finish More Tasks To Reveal The Punchline"
                    }else if points == 350{
                        jokeLabel.text = jokes[6]
                        punchlineLabel.text = punchlines[6]
                        jokesTotal = jokesTotal + "\(jokes[6])" + "\n"
                        jokesTotal = jokesTotal + "\(punchlines[6])" + "\n \n"
                    }else if points == 375{
                    jokeLabel.text = jokes[7]
                    punchlineLabel.text = "Finish More Tasks To Reveal The Punchline"
                    }else if points == 375{
                        jokeLabel.text = jokes[7]
                        punchlineLabel.text = punchlines[7]
                        jokesTotal = jokesTotal + "\(jokes[7])" + "\n"
                        jokesTotal = jokesTotal + "\(punchlines[7])" + "\n \n"
                    }else{
                        jokeLabel.text = "Finish More Tasks To Reveal a Joke"
                        punchlineLabel.text = "Finish More Tasks To Reveal The Punchline"
                    }

    myJokes.text = jokesTotal

        }
    
    }
