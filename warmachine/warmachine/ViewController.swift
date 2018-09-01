//
//  ViewController.swift
//  warmachine
//
//  Created by Peter Chan on 8/31/18.
//  Copyright © 2018 learner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let rand1 = arc4random_uniform(13) + 2
        let rand2 = arc4random_uniform(13) + 2
        
        leftImageView.image = UIImage(named: "card\(rand1)")
        rightImageView.image = UIImage(named: "card\(rand2)")

        if (rand1 > rand2)
        {
            leftScore+=1
            leftScoreLabel.text = String(leftScore)
        }
        else if (rand1 < rand2)
        {
            rightScore+=1
            rightScoreLabel.text = String(rightScore)
        }
    }
    
}

