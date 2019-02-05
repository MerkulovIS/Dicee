//
//  ViewController.swift
//  Dicee
//
//  Created by Ilya Merkulov on 04/02/2019.
//  Copyright © 2019 Ilya Merkulov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
    }

    func updateDiceImages() {
        // can use Int.random(in: 0...5)
        let randomDiceIndex1 = Int(arc4random_uniform(6))
        let randomDiceIndex2 = Int(arc4random_uniform(6))
        print("dice: \(randomDiceIndex1) \(randomDiceIndex2)")
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

