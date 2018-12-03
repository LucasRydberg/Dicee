//
//  ViewController.swift
//  Dicee
//
//  Created by Lucas Rydberg on 8/6/18.
//  Copyright © 2018 phas3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Variables
    var ranD1 : Int = 0
    var ranD2 : Int = 0
    
    // MARK: Constants
    let arrayOfDice = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // MARK: View items
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        rollTheDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        rollTheDice()
        
    }
    
    // function for rolling the dice
    func rollTheDice(){
        
        ranD1 = Int(arc4random_uniform(6))
        ranD2 = Int(arc4random_uniform(6))
        
        print("dice 1 \(ranD1)")
        print("dice 2 \(ranD2)")
        
        diceImageView1.image = UIImage(named: arrayOfDice[ranD1])
        diceImageView2.image = UIImage(named: arrayOfDice[ranD2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        rollTheDice()
        
    }
    
}

