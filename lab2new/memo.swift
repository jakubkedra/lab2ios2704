//
//  memo.swift
//  lab2new
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct memo: View {
    @State private var cardContents = ["👻", "🎃", "🕷", "🍬", "🍎", "🧙‍♀️"]
    @State private var cardColor: Color = .blue
    private let gridItems = [GridItem(.adaptive(minimum: 120))]

    var body: some View {
        VStack {
            Text("Memo")
                .font(.largeTitle)
                .padding()
            
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach(cardContents, id: \.self) { content in
                        CardView(content: content)
                            .aspectRatio(2/3, contentMode: .fit)
                            .padding(4)
                    }
                }
            }
        }
//        HStack {
//            Button(action: { action(theme) }) {
//                VStack {
//                    Image(systemName: "paintbrush")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 30, height: 30)
//                    Text(theme.label)
//                        .font(.caption)
//                }
//            }
//        }
    }
    
    private func applyTheme(theme: Theme) {
        cardContents = theme.icons.shuffled()
        cardColor = theme.cardColor
    }
}

#Preview {
    memo()
}
