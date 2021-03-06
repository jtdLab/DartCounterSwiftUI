//
//  AppPrimaryButton.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 24.01.21.
//

import SwiftUI

struct AppActionButton: View {
    // MARK: - PROPERTIES
    
    var action: (() -> Void)?
    var label: String
    
    // MARK: - BODY
    
    var body: some View {
        if let action = self.action {
            Button(action: action, label: {
                Text(label)
                .font(.system(size: 37))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, idealHeight: 75)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                .background(Color.ColorGreen)
                    .foregroundColor(Color.ColorWhite)
                .cornerRadius(25)
            })
            
        } else {
            Button(action: {}, label: {
                Text(label)
                    .font(.system(size: 37))
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, idealHeight: 75)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                    .background(Color.ColorGreen)
                    .foregroundColor(Color.ColorWhite)
                    .cornerRadius(25)
            })
        }
    }
}

// MARK: - PREVIEW

struct AppActionButton_Previews: PreviewProvider {
    static var previews: some View {
        AppActionButton(label: "Label")
            .previewLayout(.sizeThatFits)
    }
}
