//
//  CheckoutDetailsView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct CheckoutDetailsView: View {
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 8) {
            Text("Darts auf Doppel")
                .fontWeight(.black)
                .font(.system(size: 23))
            
            HStack {
                CheckoutDetailsButton(action: {} ,label: "1")
                CheckoutDetailsButton(action: {} ,label: "2")
                CheckoutDetailsButton(action: {} ,label: "3")
            }
            Divider()
            
            Text("Darts Geworfen")
                .fontWeight(.black)
                .font(.system(size: 23))
            
            HStack {
                CheckoutDetailsButton(action: {} ,label: "1")
                CheckoutDetailsButton(action: {} ,label: "2")
                CheckoutDetailsButton(action: {} ,label: "3")
            }
            Divider()
            
            AppActionButton(action: {}, label: "Bestätigen")
                .padding(.horizontal, 25)
            
            Spacer()
            
            Image("adBanner")
        }
    }
}

// MARK: - PREVIEW

struct CheckoutDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutDetailsView()
    }
}
