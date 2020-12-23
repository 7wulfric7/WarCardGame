//
//  ViewController.swift
//  WarCardGame
//
//  Created by Deniz Adil on 9/4/19.
//  Copyright © 2019 Deniz Adil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var leftScore: UILabel!
    @IBOutlet weak var rightScore: UILabel!
    var leftScoreNumber = 0
    var rightScoreNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func dealTapped(_ sender: Any) {
        // randomize numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        // update image views
        leftCard.image = UIImage(named: "card\(leftNumber)")
        rightCard.image = UIImage(named: "card\(rightNumber)")
        // compare the random numbers
        if leftNumber > rightNumber {
            // left side wins
            leftScoreNumber += 1
            leftScore.text = String(leftScoreNumber)
        }
        else if rightNumber > leftNumber {
        // right side wins
            rightScoreNumber += 1
            rightScore.text = String(rightScoreNumber)
    }
        else {
            // tie
        }
}
}
