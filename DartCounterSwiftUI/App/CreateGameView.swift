//
//  CreateGameView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct CreateGameView: View {
    // MARK: - PROPERTIES
    
    @State private var startingPointsIndex = 1
    @State private var startingPoints = ["301","501","701"]
    
    @State private var gameModesIndex = 1
    @State private var gameModes = ["FIRST TO","BEST OF"]
    
    @State private var sizeIndex = 0
    
    @State private var gameTypesIndex = 1
    @State private var gameTypes = ["LEGS","SETS"]
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 4) {
                AppCard(headerContent: {
                    Text("DartBot")
                }, bodyContent: {
                    // TODO
                }) // : CARD
                
                AppCard(headerContent: {
                    Text("DartBot")
                }, bodyContent: {
                    // TODO
                }) // : CARD
                
                AppCard(headerContent: {
                    Text("Modus")
                }, bodyContent: {
                    VStack {
                        Text("STARTWERT")
                        
                        Picker("StartingPoints", selection: $startingPointsIndex) {
                            ForEach(0 ..< startingPoints.count) { index in
                                Text(self.startingPoints[index]).tag(index)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        
                        Text("SPIELMODUS")
                        
                        Picker("GameModes", selection: $gameModesIndex) {
                            ForEach(0 ..< gameModes.count) { index in
                                Text(self.gameModes[index]).tag(index)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        
                        Picker("Size", selection: $sizeIndex) {
                            ForEach(1 ..< 100) {
                                Text("\($0)")
                            }
                        }
                        
                        Picker("GameTypes", selection: $gameTypesIndex) {
                            ForEach(0 ..< gameTypes.count) { index in
                                Text(self.gameTypes[index]).tag(index)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    } // : VSTACK
                }) // : CARD
            
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 6)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            AppActionButton(action: {}, label: "Spiel Starten")
                .padding(.horizontal, 25)
        }
    }
}

// MARK: - PREVIEW

struct CreateGameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateGameView()
    }
}
