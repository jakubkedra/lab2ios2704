//
//  zad1.swift
//  lab2new
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct zad1: View {
    
    let content: String
    @State var isFaceUp: Bool
    
    
    let rectangle = RoundedRectangle(cornerRadius: 12)
    
    var body: some View {
        ZStack {
            Group {
                if isFaceUp {
                    rectangle.fill(Color.white)
                    rectangle.strokeBorder(style: StrokeStyle(lineWidth: 2))
                    
                    Text(content)
                        .font(.largeTitle)
                }
            }
            .opacity(isFaceUp ? 1 : 0)
            
            
            rectangle.fill(Color.blue).opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            
            isFaceUp.toggle()
        }
    }
}

#Preview {
    zad1(content: "🍎", isFaceUp: true)
}
