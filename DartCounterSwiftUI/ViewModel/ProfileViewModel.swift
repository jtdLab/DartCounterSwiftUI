//
//  ProfileViewModel.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 06.02.21.
//

import Foundation

class ProfileViewModel: ObservableObject {
    // MARK: - PUBLIC
    
    @Published var profile: Profile?
    @Published var careerStats: CareerStats?
    
    func fetchProfile() {
        //firestore.fetch(collection: "profiles", document: "3REzlYhQTMY2zYWRqgUV2ZZSe7j1")
    }
    
    func fetchCareerStats() {
        //firestore.fetch(collection: "careerStats", document: "3REzlYhQTMY2zYWRqgUV2ZZSe7j1")
    }
    
    // MARK: - PRIVATE
    
    private let firestore = FireStore()
    
}
