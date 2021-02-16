//
//  SignUpView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 24.01.21.
//

import SwiftUI

struct SignUpView: View {
    // MARK: - PROPERTIES
    
    @StateObject var viewModel = SignUpViewModel()
    
    @Binding var selection: String?
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                Text(viewModel.emailErrorMessage + "-" + viewModel.usernameErrorMessage)
                Text(viewModel.passwordErrorMessage + "-" + viewModel.passwordAgainErrorMessage)
         
                VStack(spacing: 16) {
                    AppTextField(placeholder: "Email", text: $viewModel.email, errorMessage: $viewModel.emailErrorMessage)
                    
                    AppTextField(placeholder: "Username", text: $viewModel.username, errorMessage: $viewModel.usernameErrorMessage)
                    
                    AppSecureField(placeholder: "Password", text: $viewModel.password, errorMessage: $viewModel.passwordErrorMessage)
                    
                    AppSecureField(placeholder: "Password again", text: $viewModel.passwordAgain, errorMessage: $viewModel.passwordAgainErrorMessage)
                } // :VSTACK
                AppPrimaryButton(label: "Registrieren")
                    .padding(.vertical, 25)
                
                Button("Einloggen") {
                    self.selection = nil
                } // :BUTTON
                .foregroundColor(Color.ColorBlue)
                .padding(.bottom, 35)
            } // :VSTACK
            .navigationBarHidden(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 38)
        } // :NAVIGATIONVIEW
        .navigationBarHidden(true)
    }
}

// MARK: - PREVIEW

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(selection: Binding.constant("SignIn"))
            .previewDevice("iPhone 11")
    }
}
