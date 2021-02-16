//
//  FireStoreRequest.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 06.02.21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class FireStore {
    
    public enum FireStoreError: Error {
        case addError
        case fetchError
        case updateError
        case deleteError
    }
    
    private let db = Firestore.firestore()
    
    func exists(collection: String, document: String) {
        // TODO: implement this methode
        
    }
    
    // adds data to specific document or overwrites existing data in the document
    func add<T:Encodable>(collection: String, document: String, data: T, completion: ((Error?) -> Void)? = nil) {
        do {
            try db.collection(collection).document(document).setData(from: data)
            completion?(nil)
        } catch _ {
            completion?(FireStoreError.addError)
        }
    }
    
    // fetches data of specific document
    func fetch<T:Decodable>(collection: String, document: String, completion: @escaping (T?) -> Void) {
        db.collection(collection).document(document)
            .getDocument { (document, error) in
                if let document = document, document.exists {
                    completion(try? document.data(as: T.self))
                } else {
                    completion(nil)
                }
            }
    }
    
    // updates data of specific document
    func update<T:Encodable>(collection: String, document: String, data: T, completion: ((Error?) -> Void)? = nil) {
        do {
            guard let dict = data.dictionary else {
                completion?(FireStoreError.updateError)
                return
            }
            
            db.collection(collection).document(document).updateData(dict, completion: { _ in
                completion?(FireStoreError.updateError)
            })
            completion?(nil)
        }
    }
    
    // observes specific document and provides the new version of it on change
    func observe<T:Decodable>(collection: String, document: String, completion: @escaping (T?) -> Void) {
        db.collection(collection).document(document)
            .addSnapshotListener { documentSnapshot, error in
                guard let doc = documentSnapshot else {
                    completion(nil)
                    return
                }
                guard let data = try? doc.data(as: T.self) else {
                    completion(nil)
                    return
                }
                completion(data)
            }
    }
    
}
