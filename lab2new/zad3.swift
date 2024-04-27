//
//  zad3.swift
//  lab2new
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct zad3: View {
    let cardContents = ["👻", "🎃", "🕷", "🍬", "🍎", "🧙‍♀️"]
    @State private var numberOfCardsShown = 6
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(cardContents.prefix(numberOfCardsShown), id: \.self) { content in
                        CardView(content: content)
                            .aspectRatio(6/6, contentMode: .fit)
                            .padding(4)
                    }
                }
            }
            
            HStack {
                Button(action: {
                    adjustCardNumber(by: 2)
                }) {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 44, height: 44)
                }
                .disabled(numberOfCardsShown >= cardContents.count)
                
                Button(action: {
                    adjustCardNumber(by: -2)
                }) {
                    Image(systemName: "minus.circle")
                        .resizable()
                        .frame(width: 44, height: 44)
                }
                .disabled(numberOfCardsShown <= 2)
            }
        }
    }
    
    private func adjustCardNumber(by offset: Int) {
        let newCount = numberOfCardsShown + offset
        numberOfCardsShown = min(max(newCount, 2), cardContents.count)
    }
}

#Preview {
    zad3()
}
