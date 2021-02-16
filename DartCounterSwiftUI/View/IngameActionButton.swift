//
//  IngameActionButton.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct IngameActionButton<Content: View>: View {
    // MARK: - PROPERTIES
    
    var action: (() -> Void)?
    var color: Color
    var content: Content
    
    init(action: @escaping () -> Void = {}, color:  Color, @ViewBuilder content: () -> Content) {
        self.action = action
        self.color = color
        self.content = content()
    }
    
    // MARK: - BODY
    
    var body: some View {
        if let action = self.action {
            Button(action: action, label: {
                self.content
                    .font(.system(size: 60))
                    .frame(maxWidth: .infinity, idealHeight: 50)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                    .background(self.color)
                    .foregroundColor(Color.ColorWhite)
                    .cornerRadius(10)
            })
            
        } else {
            Button(action: {}, label: {
                self.content
                    .frame(maxWidth: .infinity, idealHeight: 50)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
                    .background(self.color)
                    .foregroundColor(Color.ColorWhite)
                    .cornerRadius(10)
            })
        }
    }
}

// MARK: - PREVIEW

struct IngameActionButton_Previews: PreviewProvider {
    static var previews: some View {
        IngameActionButton(color: Color.ColorGreen, content: {
            Text("HALLO")
        })
        .previewLayout(.sizeThatFits)
    }
}
