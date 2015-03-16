//
//  ViewController.swift
//  Yahtzee
//
//  Created by Andrei Joghiu on 16/3/15.
//  Copyright (c) 2015 Andrei Joghiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var rollDiceButton: UIButton!
    @IBOutlet weak var dice1: UIButton!
    @IBOutlet weak var dice2: UIButton!
    @IBOutlet weak var dice3: UIButton!
    @IBOutlet weak var dice4: UIButton!
    @IBOutlet weak var dice5: UIButton!
    
    var diceOneValue:UInt32=0
    var diceTwoValue:UInt32=0
    var diceThreeValue:UInt32=0
    var diceFourValue:UInt32=0
    var diceFiveValue:UInt32=0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollDiceButtonPressed(sender: UIButton) {
        
        diceOneValue = arc4random_uniform(6) + 1
        diceTwoValue = arc4random_uniform(6) + 1
        diceThreeValue = arc4random_uniform(6) + 1
        diceFourValue = arc4random_uniform(6) + 1
        diceFiveValue = arc4random_uniform(6) + 1
        
        println(diceOneValue)
        
        var diceOneImage = "die_face_\(diceOneValue)"
        var diceTwoImage = "die_face_\(diceTwoValue)"
        var diceThreeImage = "die_face_\(diceThreeValue)"
        var diceFourImage = "die_face_\(diceFourValue)"
        var diceFiveImage = "die_face_\(diceFiveValue)"

        
        dice1.setImage(UIImage(named: diceOneImage), forState: UIControlState.Normal)
        dice2.setImage(UIImage(named: diceTwoImage), forState: UIControlState.Normal)
        dice3.setImage(UIImage(named: diceThreeImage), forState: UIControlState.Normal)
        dice4.setImage(UIImage(named: diceFourImage), forState: UIControlState.Normal)
        dice5.setImage(UIImage(named: diceFiveImage), forState: UIControlState.Normal)
        
        }

}

