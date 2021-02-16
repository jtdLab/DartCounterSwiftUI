//
//  KeyBoard.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 27.01.21.
//

import SwiftUI

struct KeyBoard: View {
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 4) {
            HStack(spacing: 4) {
                KeyBoardButton(action: {}, content: {
                    Text("1")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
                KeyBoardButton(action: {}, content: {
                    Text("2")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
                KeyBoardButton(action: {}, content: {
                    Text("3")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
            }
            .frame(maxWidth: .infinity, maxHeight:  .infinity)
            
            HStack(spacing: 4) {
                KeyBoardButton(action: {}, content: {
                    Text("4")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
                KeyBoardButton(action: {}, content: {
                    Text("5")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
                KeyBoardButton(action: {}, content: {
                    Text("6")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
            }
            .frame(maxWidth: .infinity, maxHeight:  .infinity)
            
            HStack(spacing: 4) {
                KeyBoardButton(action: {}, content: {
                    Text("7")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
                KeyBoardButton(action: {}, content: {
                    Text("8")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
                KeyBoardButton(action: {}, content: {
                    Text("9")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
            }
            .frame(maxWidth: .infinity, maxHeight:  .infinity)

            
            HStack(spacing: 4) {
                KeyBoardButton(action: {}, content: {
                    Text("Check")
                    .fontWeight(.black)
                    .font(.system(size: 30))
                })
                KeyBoardButton(action: {}, content: {
                    Text("0")
                    .fontWeight(.black)
                    .font(.system(size: 45))
                })
                KeyBoardButton(action: {}, content: {
                    Image("delete")
                })
            }
            .frame(maxWidth: .infinity, maxHeight:  .infinity)
            
        }
        .frame(maxWidth: .infinity, maxHeight:  .infinity)
    }
}

// MARK: - PREVIEW

struct KeyBoard_Previews: PreviewProvider {
    static var previews: some View {
        KeyBoard()
            .previewLayout(.sizeThatFits)
    }
}
