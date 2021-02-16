//
//  GameSnapshot.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 25.01.21.
//

import Foundation

struct GameSnapshot: Identifiable {
    
    let id: UUID
    let description: String
    let average: Double
    let checkout: Double
    
    init(description: String, average: Double, checkout: Double) {
        self.id = UUID()
        self.description = description
        self.average = average
        self.checkout = checkout
    }
    
}
