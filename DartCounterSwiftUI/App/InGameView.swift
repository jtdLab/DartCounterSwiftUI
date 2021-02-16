//
//  InGameView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct InGameView: View {
    // MARK: - PROPERTIES
    
    @State private var players: [Int] = [1,4,4,4]
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            VStack(spacing: 4) {
                switch players.count {
                case 1:
                    OnePlayer()
                case 2:
                    TwoPlayer()
                case 3:
                    ThreePlayer()
                default:
                    FourPlayer()
                }
                
                HStack(spacing: 4) {
                    IngameActionButton(color: Color.ColorRed, content: {
                        Image(systemName: "arrowshape.turn.up.left.fill")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    })
                    
                    Text("180")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.ColorBlack2)
                    .foregroundColor(Color.ColorWhite)
                    .cornerRadius(10)
                   
                    IngameActionButton(color: Color.ColorGreen, content: {
                        Image("arrow_forward")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    })
                }

                KeyBoard()
                    
            }
            .navigationBarTitle("Best of 5 Legs", displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button(action: {
                        // TODO
                    }, label: {
                        Image("close")
                    }),
                trailing: Button(action: {
                    // TODO
                }, label: {
                    Image("stats")
                })
                .foregroundColor(Color.ColorBlack)
            )
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 6)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

// MARK: - PREVIEW

struct InGameView_Previews: PreviewProvider {
    static var previews: some View {
        InGameView()
            .previewDevice("iPhone 11")
    }
}
