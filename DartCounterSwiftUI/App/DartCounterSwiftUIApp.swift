//
//  DartCounterSwiftUIApp.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 24.01.21.
//

import SwiftUI
import Firebase

@main
struct DartCounterSwiftUIApp: App {
    
    let appState = AppState()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            if appState.status == .loading {
                LoadingView()
            } else if appState.user == nil {
                SignInView()
                    .environmentObject(appState)
            } else {
                HomeView()
                    .environmentObject(appState)
            }
        }
    }
}
