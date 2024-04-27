//
//  ThemeButton.swift
//  lab2new
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ThemeButton: View {
    let theme: Theme
    let action: (Theme) -> Void
    
    var body: some View {
        Button(action: { action(theme) }) {
            VStack {
                Image(systemName: "paintbrush")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                Text(theme.label)
                    .font(.caption)
            }
        }
    }
}

struct Theme: Identifiable {
    var id: String { label }
    let icons: [String]
    let cardColor: Color
    let label: String
}
