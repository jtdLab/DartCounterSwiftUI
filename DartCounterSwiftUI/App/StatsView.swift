//
//  StatsView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct StatsView: View {
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 4) {
            AppCard(headerContent: {
                Text("Players")
            }, bodyContent: {
                HStack {
                    VStack(spacing: 4) {
                        Text("0")
                        Text("0")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0")
                        Text("0")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("Sets")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Legs")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0")
                        Text("0")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0")
                        Text("0")
                    }
                    .frame(maxWidth: .infinity)
                } // : HSTACK
            }) // : CARD
            
            AppCard(headerContent: {
                Text("Average")
            }, bodyContent: {
                HStack {
                    VStack(spacing: 4) {
                        Text("0.00")
                        Text("0.00")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0.00")
                        Text("0.00")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("Average")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("First 9")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0.00")
                        Text("0.00")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0.00")
                        Text("0.00")
                    }
                    .frame(maxWidth: .infinity)
                } // : HSTACK
            }) // : CARD
            
            AppCard(headerContent: {
                Text("Checkout")
            }, bodyContent: {
                HStack {
                    VStack(spacing: 4) {
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("Dop. %")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("D/Leg")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Best Leg")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("W. Leg")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("High. F.")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                        Text("0.00")
                    }
                    .frame(maxWidth: .infinity)
                } // : HSTACK
            }) // : CARD
            
            AppCard(headerContent: {
                Text("Aufnahme")
            }, bodyContent: {
                HStack {
                    VStack(spacing: 4) {
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("40+")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("60+")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("80+")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("100+")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("120+")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("140+")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("160+")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("180")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 4) {
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                        Text("0")
                    }
                    .frame(maxWidth: .infinity)
                } // : HSTACK
            }) // : CARD
            
            Image("adBanner")
        }
    }
}

// MARK: - PREVIEW

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
