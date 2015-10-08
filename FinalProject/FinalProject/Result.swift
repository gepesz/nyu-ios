//
//  Result.swift
//  FinalProject
//
//  Created by Peter on 10/7/15.
//  Copyright © 2015 PETER. All rights reserved.
//

import Foundation

// Simple class to hold match results
class Result {
    
    // members
    var teamOne: String
    var teamTwo: String
    var teamOneGoal: Int
    var teamTwoGoal: Int
    
    // initializer with mandatory parameters
    init(teamOne: String, teamTwo: String, teamOneGoal: Int, teamTwoGoal: Int) {
        self.teamOne = teamOne
        self.teamTwo = teamTwo
        self.teamOneGoal = teamOneGoal
        self.teamTwoGoal = teamTwoGoal
    }
    
    // prints result to stdout
    func printResult() {
        print(teamOne + " " + String(teamOneGoal) + " - " + String(teamTwoGoal) + " " + teamTwo)
    }
    
}