//
//  Invitation.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 03.02.21.
//

import Foundation
import FirebaseFirestoreSwift

struct Invitation: Identifiable, Codable {
    
    @DocumentID var id: String? = UUID().uuidString
    
    var fromId: String
    var fromUsername: String
    var gameCode: Int
    
}

