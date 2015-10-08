//
//  ViewController.swift
//  FinalProject
//
//  Created by Peter on 10/7/15.
//  Copyright © 2015 PETER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // https://en.wikipedia.org/wiki/2014_FIFA_World_Cup_group_stage#Group_A
    func testGroupA() {
        // create teams
        let brazil: Team = Team(name: "Brazil")
        let cameroon: Team = Team(name: "Cameroon")
        let croatia: Team = Team(name: "Croatia")
        let mexico: Team = Team(name: "Mexico")
        
        // create results
        let m1: Result = Result(teamOne: "Brazil", teamTwo: "Croatia", teamOneGoal: 3, teamTwoGoal: 1)
        let m2: Result = Result(teamOne: "Mexico", teamTwo: "Cameroon", teamOneGoal: 1, teamTwoGoal: 0)
        let m3: Result = Result(teamOne: "Brazil", teamTwo: "Mexico", teamOneGoal: 0, teamTwoGoal: 0)
        let m4: Result = Result(teamOne: "Cameroon", teamTwo: "Croatia", teamOneGoal: 0, teamTwoGoal: 4)
        let m5: Result = Result(teamOne: "Cameroon", teamTwo: "Brazil", teamOneGoal: 1, teamTwoGoal: 4)
        let m6: Result = Result(teamOne: "Croatia", teamTwo: "Mexico", teamOneGoal: 1, teamTwoGoal: 3)
        
        // create league
        let groupA: League = League(name: "Group A")
        groupA.addTeams(brazil, cameroon, croatia, mexico)
        groupA.addResults(m1, m2, m3, m4, m5, m6)
        print(groupA.name)
        groupA.printTeams()
        groupA.printResults()
        
        // get ranking
        let ranking: [Team] = groupA.getRanking()
        print("\nRANKING:")
        print(ranking)
    }
    
    // https://en.wikipedia.org/wiki/2014_FIFA_World_Cup_group_stage#Group_B
    func testGroupB() {
        // create teams
        let netherlands: Team = Team(name: "Netherlands")
        let chile: Team = Team(name: "Chile")
        let spain: Team = Team(name: "Spain")
        let australia: Team = Team(name: "Australia")
        
        // create results
        let m1: Result = Result(teamOne: "Spain", teamTwo: "Netherlands", teamOneGoal: 1, teamTwoGoal: 5)
        let m2: Result = Result(teamOne: "Chile", teamTwo: "Australia", teamOneGoal: 3, teamTwoGoal: 1)
        let m3: Result = Result(teamOne: "Australia", teamTwo: "Netherlands", teamOneGoal: 2, teamTwoGoal: 3)
        let m4: Result = Result(teamOne: "Spain", teamTwo: "Chile", teamOneGoal: 0, teamTwoGoal: 2)
        let m5: Result = Result(teamOne: "Australia", teamTwo: "Spain", teamOneGoal: 0, teamTwoGoal: 3)
        let m6: Result = Result(teamOne: "Netherlands", teamTwo: "Chile", teamOneGoal: 2, teamTwoGoal: 0)
        
        // create league
        let groupB: League = League(name: "Group B")
        groupB.addTeams(netherlands, chile, spain, australia)
        groupB.addResults(m1, m2, m3, m4, m5, m6)
        print("\n====\n\n" + groupB.name)
        groupB.printTeams()
        groupB.printResults()
        
        // get ranking
        let ranking: [Team] = groupB.getRanking()
        print("\nRANKING:")
        print(ranking)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Test cases for the league.
        // All test cases are taken from the last 2014 FIFA World Cup.
        // See: https://en.wikipedia.org/wiki/2014_FIFA_World_Cup_group_stage
        
        testGroupA()
        testGroupB()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

