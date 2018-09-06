//
//  ViewController.swift
//  warmachine
//
//  Created by Peter Chan on 8/31/18.
//  Copyright © 2018 learner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    public var shouldUseRandomNumbers = true
    let roller = Roller()
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        leftScoreLabel.accessibilityIdentifier = Defines.LEFT_SCORE_LABEL
        rightScoreLabel.accessibilityIdentifier = Defines.RIGHT_SCORE_LABEL
        
        leftImageView.accessibilityIdentifier = Defines.LEFT_IMAGE_VIEW
        rightImageView.accessibilityIdentifier = Defines.RIGHT_IMAGE_VIEW
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let rand1 = roller.roll()
        let rand2 = roller.roll()
        
        leftImageView.image = UIImage(named: "card\(rand1)")
        rightImageView.image = UIImage(named: "card\(rand2)")

        leftImageView.accessibilityLabel = "card\(rand1)"
        rightImageView.accessibilityLabel = "card\(rand2)"

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

