//
//  AppSocialMediaButton.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 24.01.21.
//

import SwiftUI

enum SocialMediaButtonType: String {
    case facebook
    case instagram
    case google
}

struct SocialMediaButton: View {
    // MARK: - PROPERTIES
    
    var type: SocialMediaButtonType
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            // TODO
        }, label: {
            Image(type.rawValue)
        })
    }
}

// MARK: - PREVIEW

struct AppSocialMediaButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaButton(type: .instagram)
            .previewLayout(.sizeThatFits)
    }
}
