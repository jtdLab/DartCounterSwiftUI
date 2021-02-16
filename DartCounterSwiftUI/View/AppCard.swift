//
//  AppCard.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 24.01.21.
//

import SwiftUI

struct AppCard<Header:View, Body: View>: View {
    // MARK: - PROPERTIES
    
    var headerContent: Header
    var bodyContent: Body
    
    // MARK: - BODY
    
    init(@ViewBuilder headerContent: () -> Header, @ViewBuilder bodyContent: () -> Body) {
        self.headerContent = headerContent()
        self.bodyContent = bodyContent()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            self.headerContent
                .frame(maxWidth: .infinity)
                .padding(.all, 15)
                .background(Color.ColorBlack)
                .cornerRadius(15, corners: [.topLeft, .topRight])
            self.bodyContent
                .frame(maxWidth: .infinity)
                .padding(.all, 15)
                .background(Color.ColorGray)
                .cornerRadius(15, corners: [.bottomLeft, .bottomRight])
        }
    }
}

// MARK: - PREVIEW

struct AppCard_Previews: PreviewProvider {
    static var previews: some View {
        AppCard(headerContent: {
            Text("Title")
                .foregroundColor(Color.ColorWhite)
        }, bodyContent: {
            Text("Content")
                .frame(maxWidth: .infinity)
                .background(Color.ColorYellow)
        })
        .previewLayout(.sizeThatFits)
        
        AppCard(headerContent: {
            Text("HeaderContent")
                .frame(maxWidth: .infinity)
                .background(Color.ColorYellow)
                
        }, bodyContent: {
            Text("BodyContent")
                .frame(maxWidth: .infinity)
                .background(Color.ColorYellow)
        })
        .previewLayout(.sizeThatFits)
        
        /**AppCard(headerContent: {
            ZStack {
                HStack {
                    Text("BEST OF 5")
                        .foregroundColor(Color.ColorWhite)
                } // : HSTACK
                .frame(maxWidth: .infinity)
                
                HStack {
                    Text("vor 2 Tagen")
                        .foregroundColor(Color.ColorWhite)
                        .font(.footnote)
                } // : HSTACK
                .frame(maxWidth: .infinity, alignment: .trailing)
            } // : ZSTACK
            .background(Color.ColorYellow)
            
        }, bodyContent: {
            Text("Content")
                .background(Color.ColorYellow)
        })
        .previewLayout(.sizeThatFits)
       **/
    }
}
