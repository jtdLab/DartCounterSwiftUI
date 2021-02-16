//
//  KeyBoardButton.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct KeyBoardButton<Content:View>: View {
    // MARK: - PROPERTIES
    
    var action: (() -> Void)?
    var content: Content
    
    init(action: @escaping () -> Void = {}, @ViewBuilder content: () -> Content) {
        self.action = action
        self.content = content()
    }
    
    // MARK: - BODY
    
    var body: some View {
        if let action = self.action {
            Button(action: action, label: {
                self.content
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                    .background(Color.ColorBlack1)
                    .foregroundColor(.ColorWhite)
                    .cornerRadius(10)
            })
            
        } else {
            Button(action: {}, label: {
                self.content
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                    .background(Color.ColorBlack1)
                    .foregroundColor(.ColorWhite)
                    .cornerRadius(10)
            })
        }
    }
}

// MARK: - PREVIEW

struct KeyBoardButton_Previews: PreviewProvider {
    static var previews: some View {
        KeyBoardButton(action: {}, content: {
            Text("1")
            .fontWeight(.black)
            .font(.system(size: 45))
        })
        .previewLayout(.sizeThatFits)
    }
}
