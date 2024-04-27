//
//  zad3.1.swift
//  lab2new
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct zad3_1: View {
    @State private var cardContents = ["👻", "🎃", "🕷", "🍬", "🍎", "🧙‍♀️"]
    @State private var cardColor: Color = .white
    private let gridItems = [GridItem(.adaptive(minimum: 120))]

    var body: some View {
        VStack {
            Text("Memo")
                .font(.largeTitle)
                .padding()
            
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach(cardContents, id: \.self) { content in
                        CardView(content: content, cardColor: cardColor)
                            .aspectRatio(2/3, contentMode: .fit)
                            .padding(4)
                    }
                }
            }

            ThemePicker(onThemeSelected: applyTheme)
        }
    }
    
    private func applyTheme(theme: Theme) {
        cardContents = theme.icons.shuffled()
        cardColor = theme.cardColor
    }
}


#Preview {
    zad3_1()
}
