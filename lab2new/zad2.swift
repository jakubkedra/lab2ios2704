//
//  zad2.swift
//  lab2new
//
//  Created by student on 27/04/2024.
//


import SwiftUI

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = true

    var body: some View {
        let rectangle = RoundedRectangle(cornerRadius: 12)
        
        ZStack {
            if isFaceUp {
                rectangle
                    .fill(Color.white)
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

struct zad2: View {
    let cardContents = ["👻", "🎃", "🕷", "🍬", "🍎", "🧙‍♀️"]

    var body: some View {
        ScrollView {
            VStack {
                ForEach(cardContents, id: \.self) { content in
                    CardView(content: content)
                        .padding(4)
                }
            }
        }
    }
}

#Preview {
    zad2()
}
