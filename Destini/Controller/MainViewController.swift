//
//  ViewController.swift
//  Destini
//
//  Created by Mihai Gorgan on 11.10.2022.
//

import UIKit

class MainViewController: UIViewController {

    
    
    @IBOutlet weak var storyTextLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
        
    var brain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayStory()
        
    }

    
    
    func displayStory() {
        storyTextLabel.text = brain.getStoryText()
        choice1Button.setTitle(brain.getChoice1(), for: .normal)
        choice2Button.setTitle(brain.getChoice2(), for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        brain.checkAnswer(sender.currentTitle!)
        
        displayStory()
        
    }
    
    
    
    
    
    
    
    
    
}
