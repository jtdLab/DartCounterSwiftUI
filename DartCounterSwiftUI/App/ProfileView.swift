//
//  ProfileView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct ProfileView: View {
    // MARK: - PROPERTIES
    
    @StateObject var viewModel = ProfileViewModel()
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 4) {
            VStack {
                Image("profile")
                    .resizable()
                    .frame(width: 180, height: 180)
                    .padding()
                Text("Spieler 1")
                    .font(.system(size: 37))
                    .fontWeight(.black)
                    .foregroundColor(.ColorWhite)
                    .padding(.all, 7)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.ColorBlack)
            .cornerRadius(12)
            
            /**
             Text("KARRIERE STATISTIK")
                 .font(.system(size: 37))
                 .fontWeight(.black)
                 .foregroundColor(Color.ColorWhite)
                 .padding(.vertical, 20)
                 .frame(maxWidth: .infinity, maxHeight: .infinity)
                 .background(Color.ColorBlack)
                 .cornerRadius(12)
             
             */
            
            VStack(spacing: 4) {
                HStack(spacing: 4) {
                    AppCard(headerContent: {
                        Text("Titel")
                    }, bodyContent: {
                        HStack {
                            Image("trend_up")
                            
                            Text("75.36")
                            .font(.system(size: 46))
                            .fontWeight(.semibold)
                        } // : HSTACK
                    }) // : CARD
                    
                    AppCard(headerContent: {
                        Text("Titel")
                    }, bodyContent: {
                        HStack {
                            Image("trend_up")
                            
                            Text("31.47")
                            .font(.system(size: 46))
                            .fontWeight(.semibold)
                        } // : HSTACK
                    }) // : CARD
                }
                
                HStack(spacing: 4) {
                    AppCard(headerContent: {
                        Text("Titel")
                    }, bodyContent: {
                        HStack {
                            Image("trend_down")
                            
                            Text("81.23")
                            .font(.system(size: 46))
                            .fontWeight(.semibold)
                        } // : HSTACK
                    }) // : CARD
                    
                    AppCard(headerContent: {
                        Text("Titel")
                    }, bodyContent: {
                        HStack {
                            Text("111")
                            .font(.system(size: 46))
                            .fontWeight(.semibold)
                        } // : HSTACK
                    }) // : CARD
                }
                
                HStack(spacing: 4) {
                    AppCard(headerContent: {
                        Text("Titel")
                            .foregroundColor(Color("ColorWhite"))
                    }, bodyContent: {
                        HStack {
                            Text("75")
                            .font(.system(size: 46))
                            .fontWeight(.semibold)
                        } // : HSTACK
                    }) // : CARD
                    
                    AppCard(headerContent: {
                        Text("Titel")
                    }, bodyContent: {
                        HStack {
                            Text("36")
                            .font(.system(size: 46))
                            .fontWeight(.semibold)
                        } // : HSTACK
                    }) // : CARD
                }
            }
            
            AppActionButton(action: {}, label: "Letzte 10 Spiele")
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 8)
        .onAppear(perform: {
            viewModel.fetchCareerStats()
        })
    }
}

// MARK: - PREVIEW

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
