//
//  Roller.swift
//  warmachine
//
//  Created by mcit on 9/3/18.
//  Copyright © 2018 learner. All rights reserved.
//

import UIKit

class Roller: NSObject {
    static var shouldUseRandomNums = true
    private static let fixedValues = [1,7,11,2,5,8,9,5,2,5,11,11]
    
    var nextIndex = 0
    
    func roll() -> UInt32 {
        if Roller.shouldUseRandomNums
        {
            return arc4random_uniform(13) + 2
        }
        
        let returnVal = UInt32(Roller.fixedValues[nextIndex] + 2)
        nextIndex = (nextIndex + 1) % Roller.fixedValues.count
        return returnVal
    }
    
}
