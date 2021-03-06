//
//  AppTextField.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 24.01.21.
//

import SwiftUI

struct AppTextField: View {
    // MARK: - PROPERTIES
    let placeholder: String
    
    @Binding var text: String
    @Binding var errorMessage: String
    
    init(placeholder: String, text: Binding<String>, errorMessage: Binding<String> = Binding.constant("")) {
        self.placeholder = placeholder
        self._text = text
        self._errorMessage = errorMessage
    }
    // MARK: - BODY
    
    var body: some View {
        VStack {
            HStack {
                TextField(placeholder, text: $text)
                    .padding(10)
                    .frame(maxWidth: .infinity, idealHeight: 36)
                    .font(Font.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(Color.ColorBlack)
                
                if errorMessage != "" {
                    Image(systemName: "exclamationmark.octagon")
                        .foregroundColor(Color.ColorRed)
                        .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.ColorGray))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.ColorRed, lineWidth: errorMessage != "" ? 2 : 0))
            
            if errorMessage != "" {
                HStack {
                    Spacer()
                    Text(errorMessage)
                        .font(.footnote)
                        .foregroundColor(Color.ColorRed)
                } // :HSTACK
                .padding(.horizontal, 8)
                .padding(.top, 1)
            }
        }
    }
}

// MARK: - PREVIEW

struct AppTextField_Previews: PreviewProvider {
    static var previews: some View {
        AppTextField(placeholder: "Placeholder", text: Binding.constant("Text"))
            .padding()
            .previewLayout(.sizeThatFits)
        
        AppTextField(placeholder: "Placeholder",text: Binding.constant("Text"), errorMessage: Binding.constant("Invalid input"))
            .padding()
            .previewLayout(.sizeThatFits)
        
        AppTextField(placeholder: "Placeholder", text: Binding.constant(""))
            .padding()
            .previewLayout(.sizeThatFits)
        
        AppTextField(placeholder: "Placeholder", text: Binding.constant(""), errorMessage: Binding.constant("Invalid input"))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
