//
//  Last10GamesCard.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 25.01.21.
//

import SwiftUI

struct Last10GamesCard: View {
    // MARK: - PROPERTIES
    
    var gameSnapshot: GameSnapshot
    
    // MARK: - BODY
    
    var body: some View {
        AppCard(headerContent: {
            Text(gameSnapshot.description)
        }, bodyContent: {
            HStack {
                Image("dummy")
                    .resizable()
                    .frame(width: 75.0, height: 75.0)
                Spacer()
                VStack(spacing: 15) {
                    Text("Average:")
                    Text("Checkout:")
                }
                
                VStack(spacing: 15) {
                    Text(String(gameSnapshot.average))
                    Text(String(gameSnapshot.checkout) + "%")
                }
                Spacer()
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 30, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            } // : HSTACK
        }) // : CARD
    }
}

// MARK: - PREVIEW

struct Last10GamesCard_Previews: PreviewProvider {
    static var previews: some View {
        Last10GamesCard(gameSnapshot: GameSnapshot(description: "BEST OF 6 SETS", average: 39.44, checkout: 2.73))
            .previewLayout(.sizeThatFits)
    }
}
