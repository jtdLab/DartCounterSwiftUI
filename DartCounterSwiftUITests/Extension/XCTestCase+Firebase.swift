//
//  XCTestCase+Firebase.swift
//  DartCounterSwiftUITests
//
//  Created by Jonas Schlauch on 12.02.21.
//

import Firebase
import XCTest

extension XCTestCase {
    
    /**
     Deletes all data of the firestore emulator instance
     */
    func clearFirestore() {
        let semaphore = DispatchSemaphore(value: 0)
        let projectId = FirebaseApp.app()!.options.projectID!
        let url = URL(string: "http://localhost:8080/emulator/v1/projects/\(projectId)/databases/(default)/documents")!
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        let task = URLSession.shared.dataTask(with: request) { _,_,_ in
          print("Firestore cleared")
          semaphore.signal()
        }
        task.resume()
        semaphore.wait()
      }
    
}
