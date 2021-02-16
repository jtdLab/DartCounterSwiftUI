//
//  ThreePlayer.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct ThreePlayer: View {
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 4) {
            HStack(spacing: 4) {
                VStack {
                    Text("SPIELER 1")
                        .fontWeight(.black)
                        .font(.system(size: 23))
                        .foregroundColor(Color.ColorWhite)
                    
                    HStack {
                        Spacer()
                        Text("L:0")
                            .fontWeight(.semibold)
                            .font(.system(size: 14))
                            .foregroundColor(Color.ColorWhite)
                            .padding(.horizontal, 10)
                            .background(Color.ColorYellow)
                            .cornerRadius(40)
                        
                        Spacer()
                        
                        Text("S:0")
                            .fontWeight(.semibold)
                            .font(.system(size: 14))
                            .foregroundColor(Color.ColorWhite)
                            .padding(.horizontal, 10)
                            .background(Color.ColorYellow)
                            .cornerRadius(40)
                        Spacer()
                    }
                    
                    Text("501")
                        .fontWeight(.black)
                        .font(.system(size: 37))
                        .foregroundColor(Color.ColorWhite)
                    
                    Text("180")
                        .fontWeight(.black)
                        .font(.system(size: 9))
                        .foregroundColor(Color.ColorWhite)
                    
                    Text("Geworfene Darts:  3")
                        .fontWeight(.semibold)
                        .font(.system(size: 9))
                        .foregroundColor(Color.ColorWhite)
                    
                    HStack {
                        Spacer()
                        Text("Avg.:  180.00")
                            .fontWeight(.semibold)
                            .font(.system(size: 9))
                            .foregroundColor(Color.ColorWhite)
                        Spacer()
                        Text("Checkout:  0.00")
                            .fontWeight(.semibold)
                            .font(.system(size: 9))
                            .foregroundColor(Color.ColorWhite)
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight:  .infinity)
                .background(Color.ColorBlack)
                .cornerRadius(15)
                
                VStack {
                    Text("SPIELER 1")
                        .fontWeight(.black)
                        .font(.system(size: 23))
                        .foregroundColor(Color.ColorWhite)
                    
                    HStack {
                        Spacer()
                        Text("L:0")
                            .fontWeight(.semibold)
                            .font(.system(size: 14))
                            .foregroundColor(Color.ColorWhite)
                            .padding(.horizontal, 10)
                            .background(Color.ColorYellow)
                            .cornerRadius(40)
                        
                        Spacer()
                        
                        Text("S:0")
                            .fontWeight(.semibold)
                            .font(.system(size: 14))
                            .foregroundColor(Color.ColorWhite)
                            .padding(.horizontal, 10)
                            .background(Color.ColorYellow)
                            .cornerRadius(40)
                        Spacer()
                    }
                    
                    Text("501")
                        .fontWeight(.black)
                        .font(.system(size: 37))
                        .foregroundColor(Color.ColorWhite)
                    
                    Text("180")
                        .fontWeight(.black)
                        .font(.system(size: 9))
                        .foregroundColor(Color.ColorWhite)
                    
                    Text("Geworfene Darts:  3")
                        .fontWeight(.semibold)
                        .font(.system(size: 9))
                        .foregroundColor(Color.ColorWhite)
                    
                    HStack {
                        Spacer()
                        Text("Avg.:  180.00")
                            .fontWeight(.semibold)
                            .font(.system(size: 9))
                            .foregroundColor(Color.ColorWhite)
                        Spacer()
                        Text("Checkout:  0.00")
                            .fontWeight(.semibold)
                            .font(.system(size: 9))
                            .foregroundColor(Color.ColorWhite)
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight:  .infinity)
                .background(Color.ColorBlack)
                .cornerRadius(15)
            }
            HStack {
                VStack {
                    Text("SPIELER 1")
                        .fontWeight(.black)
                        .font(.system(size: 23))
                        .foregroundColor(Color.ColorWhite)
                    
                    HStack {
                        Spacer()
                        Text("L:0")
                            .fontWeight(.semibold)
                            .font(.system(size: 14))
                            .foregroundColor(Color.ColorWhite)
                            .padding(.horizontal, 10)
                            .background(Color.ColorYellow)
                            .cornerRadius(40)
                        
                        Spacer()
                        
                        Text("S:0")
                            .fontWeight(.semibold)
                            .font(.system(size: 14))
                            .foregroundColor(Color.ColorWhite)
                            .padding(.horizontal, 10)
                            .background(Color.ColorYellow)
                            .cornerRadius(40)
                        Spacer()
                    }
                    
                    Text("501")
                        .fontWeight(.black)
                        .font(.system(size: 37))
                        .foregroundColor(Color.ColorWhite)
                    
                    Text("180")
                        .fontWeight(.black)
                        .font(.system(size: 9))
                        .foregroundColor(Color.ColorWhite)
                    
                    Text("Geworfene Darts:  3")
                        .fontWeight(.semibold)
                        .font(.system(size: 9))
                        .foregroundColor(Color.ColorWhite)
                    
                    HStack {
                        Spacer()
                        Text("Avg.:  180.00")
                            .fontWeight(.semibold)
                            .font(.system(size: 9))
                            .foregroundColor(Color.ColorWhite)
                        Spacer()
                        Text("Checkout:  0.00")
                            .fontWeight(.semibold)
                            .font(.system(size: 9))
                            .foregroundColor(Color.ColorWhite)
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight:  .infinity)
                .background(Color.ColorBlack)
                .cornerRadius(15)
            }
        }
    }
}

// MARK: - PREVIEW

struct ThreePlayer_Previews: PreviewProvider {
    static var previews: some View {
        ThreePlayer()
            .previewLayout(.sizeThatFits)
    }
}
