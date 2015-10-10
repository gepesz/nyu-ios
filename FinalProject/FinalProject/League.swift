//
//  League.swift
//  FinalProject
//
//  Created by Peter on 10/7/15.
//  Copyright © 2015 PETER. All rights reserved.
//

import Foundation

// This class is a simplified representation of a soccer league/group
class League {
    
    // members
    var name: String
    var teams: [String: Team]
    var results: [Result]
        
    // initializer with name
    init(name: String) {
        self.name = name
        self.teams = [String: Team]()
        self.results = []
    }
    
    // TEAMS
    
    // add any number of teams to the league
    func addTeams(teams: Team...) {
        for team in teams {
            self.teams[team.name] = team
        }
    }
    
    // removes all teams
    func removeTeams() {
        teams = [String: Team]()
    }
    
    // prints teams to stdout
    func printTeams() {
        print("TEAMS:\n")
        for (_,team) in teams {
            team.printTeam()
            print("")
        }
    }
    
    // RESULTS
    
    // add any number of match results to the league
    func addResults(results: Result...) {
        for result in results {
            self.results.append(result)
        }
    }
    
    // remove all results
    func removeResults() {
        results = []
    }
    
    // prints results to stdout
    func printResults() {
        print("RESULTS:\n")
        for result in results {
            result.printResult()
        }
    }
    
    // RANKING
    
    // clears out all results by resetting each team's stats to 0
    func clearResults() {
        for (_,team) in teams {
            team.clear()
        }
    }
    
    // analyzes all results and updates each team's stats
    func processResults() {
        for result in results {
            if let teamOne = teams[result.teamOne] {
                if let teamTwo = teams[result.teamTwo] {
                    // only consider valid results where both teams exist
                    
                    // update goals
                    teamOne.goalScored += result.teamOneGoal
                    teamTwo.goalConceded += result.teamOneGoal
                    teamOne.goalConceded += result.teamTwoGoal
                    teamTwo.goalScored += result.teamTwoGoal
                    
                    // update points
                    if ( result.teamOneGoal > result.teamTwoGoal ) {
                        // team one win
                        teamOne.points += 3
                    } else if ( result.teamOneGoal == result.teamTwoGoal ) {
                        // draw
                        teamOne.points += 1
                        teamTwo.points += 1
                    } else {
                        // team two win
                        teamTwo.points += 3
                    }                    
                }
            }
        }
    }
    
    // sorts all teams based on results (stats) already processed
    func rankTeams() -> [Team] {
        let ranking = teams.values.sort {
            var ret: Bool = false
            if ( $0.points > $1.points ) {
                // more points
                ret = true
            } else if ( $0.points == $1.points ) {
                if ( $0.goalDifference() > $1.goalDifference() ) {
                    // same points, but higher goal difference
                    ret = true
                } else if ( $0.goalDifference() > $1.goalDifference() ) {
                    if ( $0.goalScored > $1.goalScored ) {
                        // same points, same goal difference, but more goals scored
                        ret = true
                    }
                }
            }
            return ret
        }
        return ranking
    }
    
    // calculates and returns the current ranking of teams
    // Returns an ordered array of teams with highest rank team at index 0
    //
    // FIFA rules apply when calculating rankings:
    //  - win is 3pts
    //  - draw is 1pt
    //  - loss is 0pt
    // Teams that finish level on points decide ranking based on goal difference.
    // If goal difference equals as well, then greatest number of goals scored
    // determines who finishes higher.
    //
    // For details, see: https://en.wikipedia.org/wiki/FIFA_World_Cup#Final_tournament
    func getRanking() -> [Team] {
        clearResults()
        processResults()
        return rankTeams()
    }
    
}