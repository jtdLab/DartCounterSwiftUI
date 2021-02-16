//
//  Last10GamesView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 25.01.21.
//

import SwiftUI

struct Last10GamesView: View {
    // MARK: - PROPERTIES
    
    var gameSnapshots: [GameSnapshot]
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(gameSnapshots) { gameSnapshot in
                    Last10GamesCard(gameSnapshot: gameSnapshot)
                }
            }
        }
    }
}

// MARK: - PREVIEW

struct Last10GamesView_Previews: PreviewProvider {
    static var previews: some View {
        Last10GamesView(gameSnapshots: [
            GameSnapshot(description: "BEST OF 6 SETS", average: 39.44, checkout: 2.73),
            GameSnapshot(description: "BEST OF 34 SETS", average: 139.44, checkout: 12.73),
            GameSnapshot(description: "BEST OF 43 LEGS", average: 9.44, checkout: 32.73),
            GameSnapshot(description: "BEST OF 3 SETS", average: 99.44, checkout: 99.73),
            GameSnapshot(description: "BEST OF 355 SETS", average: 99.44, checkout: 99.73),
            GameSnapshot(description: "BEST OF 355 SETS", average: 99.44, checkout: 99.73),
            GameSnapshot(description: "BEST OF 355 SETS", average: 99.44, checkout: 99.73),
        ])
            .previewDevice("iPhone 11")
    }
}
