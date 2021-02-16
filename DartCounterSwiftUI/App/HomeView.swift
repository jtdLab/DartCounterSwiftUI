//
//  HomeView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 24.01.21.
//

import SwiftUI

struct HomeView: View {
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            VStack(spacing: 4) {
                HomeButton(content: {
                    HStack {
                        Image("profile")
                      
                        VStack {
                            Text("Spieler1")
                                .font(.system(size: 23))
                                .fontWeight(.black)
                                .padding(.horizontal, 40)
                                .padding(.bottom, 4)
            
                            HStack {
                                Spacer()
                                VStack(alignment: .trailing, spacing: 4) {
                                    Text("Average:")
                                        .font(.system(size: 14))
                                    Text("Checkout:")
                                        .font(.system(size: 14))
                                    Text("Siege:")
                                        .font(.system(size: 14))
                                    Text("Niederlagen:")
                                        .font(.system(size: 14))
                                }
                             
                                Spacer()
                                VStack(spacing: 4) {
                                    Text("54.76")
                                        .font(.system(size: 14))
                                    Text("21.87")
                                        .font(.system(size: 14))
                                    Text("16")
                                        .font(.system(size: 14))
                                    Text("35")
                                        .font(.system(size: 14))
                                        
                                }
                                
                                Spacer()
                            }
                            
                        }
                    }
                })
                
                HomeButton(content: {
                    HStack {
                        Image("target")
                        VStack(spacing: -18) {
                            Text("OFFLINE")
                                .font(.system(size: 60))
                                .fontWeight(.black)
                            Text("SPIELEN")
                                .font(.system(size: 23))
                                .fontWeight(.black)
                                .foregroundColor(Color.ColorRed)
                        }
                    }
                })
                
                HomeButton(content: {
                    HStack {
                        Image("target")
                        VStack(spacing: -18) {
                            Text("ONLINE")
                                .font(.system(size: 60))
                                .fontWeight(.black)
                            Text("SPIELEN")
                                .font(.system(size: 23))
                                .fontWeight(.black)
                                .foregroundColor(Color.ColorYellow)
                        }
                    }
                })
                
                HStack {
                    HomeButton(content: {
                        Text("SOCIAL\nMEDIA")
                            .fontWeight(.black)
                    })
                    
                    HomeButton(content: {
                        VStack {
                            Image("settings")
                            Text("Einstellungen")
                                .fontWeight(.black)
                        }
                    })
                }
                
                Image("adBanner")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
            }
            .navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button(action: {
                        // TODO
                    }, label: {
                        Image("burger_menu")
                    }),
                trailing: Button(action: {
                    // TODO
                }, label: {
                    Text("Logout")
                })
                .foregroundColor(Color.ColorBlack)
            )
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 6)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

// MARK: - PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 11")
    }
}
