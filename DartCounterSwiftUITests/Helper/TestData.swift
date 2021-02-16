//
//  TestData.swift
//  DartCounterSwiftUITests
//
//  Created by Jonas Schlauch on 08.02.21.
//

import Foundation

struct TestData: Codable, Equatable {
    
    var testKey: String
    var created_at: String = DateFormatter().string(from: Date())
   
}
