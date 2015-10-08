//
//  main.swift
//  user_input
//
//  Created by Peter on 10/4/15.
//  Copyright © 2015 PETER. All rights reserved.
//

import Foundation

print("Guess the number that the computer has generated.")

let magicNumber:Int = (Int)(arc4random() % 65)
var attemptNumber:Int = 0
while(true) {
    attemptNumber++
    print("Attempt: " + String(attemptNumber) + ". Enter guess: ")
    let guess:String = getInput()
    let g:Int = (guess as NSString).integerValue
    
    if (g > magicNumber) {
        print("Guess lower")
    } else if (g < magicNumber) {
        print("Guess higher")
    } else {
        print("Success")
        break
    }
}

