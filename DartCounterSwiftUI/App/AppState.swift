//
//  AppState.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 04.02.21.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    
    public enum Status {
        case running
        case loading
    }
    
    @Published var status: Status = Status.running
    
    @Published var user: User?
    @Published var game: Game?
    @Published var settings: Settings?
    
}
