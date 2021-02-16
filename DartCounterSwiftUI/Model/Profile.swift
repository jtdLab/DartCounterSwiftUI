//
//  Profile.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 06.02.21.
//

import Foundation
import FirebaseFirestoreSwift

class Profile: Identifiable, Codable {
    
    @DocumentID var id: String? = UUID().uuidString
    
    var isOnline: Bool
    var photoUrl: String?
    var username: String
}
