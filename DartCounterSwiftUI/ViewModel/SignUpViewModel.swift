//
//  SignUpViewModel.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 02.02.21.
//

import Foundation
import Combine

import Firebase

class SignUpViewModel: ObservableObject {
    // MARK: - PUBLIC
    
    @Published var email: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var passwordAgain: String = ""
    
    @Published var emailErrorMessage: String = ""
    @Published var usernameErrorMessage: String = ""
    @Published var passwordErrorMessage: String = ""
    @Published var passwordAgainErrorMessage: String = ""
    @Published var errorMessage: String = ""
    
    init() {
        setupPublishers()
    }
    
    func signUpEmailAndPassword() {
        auth.createUser(withEmail: email, password: password, completion: { authResult, error in
            // TODO: handle authResult and error
        })
    }
    
    // MARK: - PRIVATE
    
    private var cancellables = Set<AnyCancellable>()
    
    private var auth = Auth.auth()
   
    
    private func setupPublishers() {
        setupEmailValidationPublisher()
        setupUsernameValidationPublisher()
        setupPasswordValidationPublisher()
        setupPasswordAgainValidationPublisher()
    }
    
    private func setupEmailValidationPublisher() {
        $email
            .receive(on: DispatchQueue.main)
            .map(validateEmail(email:))
            .assign(to: \.emailErrorMessage, on: self)
            .store(in: &cancellables)
    }
    
    private func setupUsernameValidationPublisher() {
        $username
            .receive(on: DispatchQueue.main)
            .map(validateUsername(username:))
            .assign(to: \.usernameErrorMessage, on: self)
            .store(in: &cancellables)
    }
    
    private func setupPasswordValidationPublisher() {
        $password
            .receive(on: DispatchQueue.main)
            .map(validatePassword(password:))
            .assign(to: \.passwordErrorMessage, on: self)
            .store(in: &cancellables)
    }
    
    private func setupPasswordAgainValidationPublisher() {
        $passwordAgain
            .receive(on: DispatchQueue.main)
            .map(validatePasswordAgain(passwordAgain:))
            .assign(to: \.passwordAgainErrorMessage, on: self)
            .store(in: &cancellables)
    }
    
    private func validateEmail(email: String) -> String {
        if email == "" {
            return "Email error"
        }
       
        return ""
    }
    
    private func validateUsername(username: String) -> String {
        if email == "" {
            return "Username error"
        }
       
        return ""
    }
    
    private func validatePassword(password: String) -> String {
        if email == "" {
            return "Password error"
        }
       
        return ""
    }
    
    private func validatePasswordAgain(passwordAgain: String) -> String {
        if email == "" {
            return "Password again error"
        }
       
        return ""
    }
    
   
}
