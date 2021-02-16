//
//  LoadingView.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 05.02.21.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        LottieView(name: "loading")
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
