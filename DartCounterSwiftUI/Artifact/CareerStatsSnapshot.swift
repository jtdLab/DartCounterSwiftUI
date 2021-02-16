//
//  CareerStatsSnapshot.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 25.01.21.
//

import Foundation

class CareerStatsSnapshot {
    
    let average: Double
    let checkout: Double
    let firstNine: Double
    let games: Int
    let wins: Int
    let defeats: Int
    
    init(average: Double, checkout: Double, firstNine: Double, games: Int, wins: Int, defeats: Int) {
        self.average = average
        self.checkout = checkout
        self.firstNine = firstNine
        self.games = games
        self.wins = wins
        self.defeats = defeats
    }
    
}
