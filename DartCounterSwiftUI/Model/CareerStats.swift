//
//  CareerStats.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 03.02.21.
//

import Foundation
import FirebaseFirestoreSwift

struct CareerStats: Identifiable, Codable, Equatable {
    
    // FIXME: DocumentId doesnt get injected from firebase document
    @DocumentID var id: String? = UUID().uuidString
    
    var average: Double
    var checkoutPercentage: Double
    var firstNine: Double
    var games: Int
    var wins: Int
    var defeats: Int
    
    enum CodingKeys: String, CodingKey {
        case average
        case checkoutPercentage
        case firstNine
        case games
        case wins
        case defeats
    }
    
    static func ==(lhs: CareerStats, rhs: CareerStats) -> Bool {
        return lhs.average == rhs.average
            && lhs.checkoutPercentage == rhs.checkoutPercentage
            && lhs.firstNine == rhs.firstNine
            && lhs.games == rhs.games
            && lhs.wins == rhs.wins
            && lhs.defeats == rhs.defeats
    }

}
