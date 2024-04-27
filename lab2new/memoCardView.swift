//
//  memoCardView.swift
//  lab2new
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct memoCardView: View {
    let content: String
    @State var isFaceUp: Bool = true
    let cardColor: Color

    var body: some View {
        let rectangle = RoundedRectangle(cornerRadius: 12)
        
        ZStack {
            if isFaceUp {
                rectangle
                    .fill(cardColor)
                    .overlay(
                        rectangle
                            .strokeBorder(style: StrokeStyle(lineWidth: 2))
                    )
                Text(content)
                    .font(.largeTitle)
            } else {
                rectangle
                    .fill(Color.blue)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
