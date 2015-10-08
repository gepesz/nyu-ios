//
//  Team.swift
//  FinalProject
//
//  Created by Peter on 10/7/15.
//  Copyright © 2015 PETER. All rights reserved.
//

import Foundation

// Simple class that describes a team
class Team: CustomStringConvertible {
    
    // members
    var name: String    // must be unique
    var points: Int
    var goalScored: Int
    var goalConceded: Int

    // textual representation of self
    var description: String {
        return name
    }
    
    // initializer with mandatory name parameter
    init(name: String) {
        self.name = name
        self.points = 0
        self.goalScored = 0
        self.goalConceded = 0
    }
    
    // initializer with all members
    init(name: String, points: Int, goalScored: Int, goalConceded: Int) {
        self.name = name
        self.points = points
        self.goalScored = goalScored
        self.goalConceded = goalConceded
    }
    
    // resets the team's stats
    func clear() {
        points = 0
        goalScored = 0
        goalConceded = 0
    }
    
    // returns the team's current goal difference
    func goalDifference() -> Int {
        return goalScored - goalConceded
    }
    
    // prints team to stdout
    func printTeam() {
        print(name)
        print("- points: ", points)
        print("- goalScored: ", goalScored)
        print("- goalConceded: ", goalConceded)
    }
    
}