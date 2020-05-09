//
//  ViewController.swift
//  Dicee
//
//  Created by Myat Thu Ko on 5/9/20.
//  Copyright © 2020 Myat Thu Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IB means Interface Builder
    //@IBOutlet allows to reference a UI element
    // press control and click the UI Element and drag to the main.storybaord
    // to show side to side use the assistant in the editor
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let dices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //who.what = value
        diceImageView1.image = #imageLiteral(resourceName: "DiceThree")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        
        // two ways to randomzie
        
//        diceImageView1.image = dices[Int.random(in: 0...5)]
//        diceImageView2.image = dices[Int.random(in: 0...5)]
        
        diceImageView1.image = dices.randomElement()
        diceImageView2.image = dices.randomElement()
    }
    
}

