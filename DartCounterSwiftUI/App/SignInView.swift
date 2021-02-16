//
//  SignInView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 24.01.21.
//

import SwiftUI

struct SignInView: View {
    // MARK: - PROPERTIES
    
    @StateObject var viewModel = SignInViewModel()
    @EnvironmentObject var appState: AppState
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                // MARK: - NAVIGATION
                // TODO: implement navigation links etc here
                // MARK: - VIEW
                Spacer()
                Image("logo")
                Spacer()
                VStack(spacing: 16) {
                    AppTextField(placeholder: "Email", text: $viewModel.email)
                    AppSecureField(placeholder: "Password", text: $viewModel.password)
                } // :VSTACK
                HStack {
                    Spacer()
                    Text(viewModel.errorMessage)
                    .font(.footnote)
                    .foregroundColor(Color.ColorRed)
                } // :HSTACK
                AppPrimaryButton(action: {
                    //viewModel.signInEmailAndPassword()
                    viewModel.selection = "HomeView"
                }, label: "Einloggen")
                .padding(.top, 25)
                .padding(.bottom, 10)
                Button("Passwort vergessen?") {
                    viewModel.selection = "SignUpView"
                } // :BUTTON
                .foregroundColor(Color.ColorBlue)
                HStack(alignment: .center, spacing: 50, content: {
                    SocialMediaButton(type: .facebook)
                    SocialMediaButton(type: .google)
                    SocialMediaButton(type: .instagram)
                }) // :HSTACK
                .padding(.vertical, 25)
                Button("Jetzt Registrieren") {
                    viewModel.selection = "SignUpView"
                } // :BUTTON
                .foregroundColor(Color.ColorBlue)
                .padding(.bottom, 35)
            } // :VSTACK
            .navigationBarHidden(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.all, 38)
        } // :NAVIGATION VIEW
        .navigationBarHidden(true)
    }
}

// MARK: - PREVIEW

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .environmentObject(AppState())
            .previewDevice("iPhone 11")
        
    }
}
