//
//  SignInViewModel.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 02.02.21.
//

import Foundation

import Firebase

class SignInViewModel: ObservableObject {
    // MARK: - PUBLIC
    
    @Published var selection: String? = nil
    @Published var email: String = ""
    @Published var password: String = ""

    @Published var errorMessage: String = ""
   
    func signInEmailAndPassword() {
        auth.signIn(withEmail: email, password: password, completion: { authResult, error in
            if error != nil {
                self.errorMessage = "Invalid Username or Password"
            } else {
                
            }
        })
    }
    
    func signInFacebook() {
        // TODO: implement login with facebook
    }
    
    func signInGoogle() {
        // TODO: implement login with google
    }
    
    func signInInstagram() {
        // TODO: implement login with instagram
    }
    
    // MARK: - PRIVATE
    
    private let auth = Auth.auth()
    private let db = Firestore.firestore()
    
}
