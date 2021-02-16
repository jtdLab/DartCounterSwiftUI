//
//  HomeButton.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 25.01.21.
//

import SwiftUI

struct HomeButton<Content:View>: View {
    // MARK: - PROPERTIES
    
    var padding: CGFloat
    var content: Content
    
    init(padding: CGFloat = 15, @ViewBuilder content: () -> Content) {
        self.padding = padding
        self.content = content()
    }
    
    // MARK: - BODY
    
    var body: some View {
        self.content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 15)
            .background(Color.ColorBlack1)
            .foregroundColor(Color.ColorWhite)
            .cornerRadius(23)
    }
}

// MARK: - PREVIEW

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton(content: {
            VStack {
                Text("Content")
            }
        })
        .previewLayout(.sizeThatFits)
    }
}
