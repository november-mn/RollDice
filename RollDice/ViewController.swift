//
//  ViewController.swift
//  RollDice
//
//  Created by Sally Wang on 2021/9/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDiceOne: UIImageView!
    @IBOutlet weak var imgDiceTwo: UIImageView!
    
    @IBOutlet weak var lblScore: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAbove7Pressed(_ sender: Any) {
        betButtonPressed(btnName: "Above7")
    }
    
    @IBAction func btnBelow7Pressed(_ sender: Any) {
        betButtonPressed(btnName: "Below7")
    }
    
    @IBAction func btnLucky7Pressed(_ sender: Any) {
        betButtonPressed(btnName: "Lucky7")
    }
    
    func betButtonPressed(btnName: String) {
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgDiceOneFileName = "Dice\(one)"
        let imgDiceTwoFileName = "Dice\(two)"

        imgDiceOne.image = UIImage(named: imgDiceOneFileName)
        imgDiceTwo.image = UIImage(named: imgDiceTwoFileName)
        
        switch btnName {
            case "Above7":
                if one + two > 7 {score += 1}
                else {score -= 1}
                
            case "Below7":
                if one + two < 7 {score += 1}
                else {score -= 1}
            case "Lucky7":
                if one + two == 7 {score += 7}
                else {score -= 1}
            default:
                print("BtnName Error")
        }
        
        lblScore.text = "Score : \(score)"
    }
}

