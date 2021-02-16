//
//  CheckoutDetailsButton.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct CheckoutDetailsButton: View {
    // MARK: - PROPERTIES
    
    var action: (() -> Void)?
    var label: String
    
    // MARK: - BODY
    
    var body: some View {
        if let action = self.action {
            Button(action: action, label: {
                Text(self.label)
                    .fontWeight(.black)
                    .font(.system(size: 45))
                    .frame(width: 75, height: 75)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                    .background(Color.ColorBlack1)
                    .foregroundColor(Color.ColorWhite)
                    .cornerRadius(15)
            })
            
        } else {
            Button(action: {}, label: {
                Text(self.label)
                    .fontWeight(.black)
                    .font(.system(size: 45))
                    .frame(width: 75, height: 75)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                    .background(Color.ColorBlack1)
                    .foregroundColor(Color.ColorWhite)
                    .cornerRadius(15)
            })
        }
    }
}

// MARK: - PREVIEW

struct CheckoutDetailsButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutDetailsButton(action: {}, label: "1")
            .previewLayout(.sizeThatFits)
    }
}
