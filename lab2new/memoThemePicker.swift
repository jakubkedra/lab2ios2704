//
//  memoThemePicker.swift
//  lab2new
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct memoThemePicker: View {
    var onThemeSelected: (Theme) -> Void
    
    var body: some View {
        HStack {
            ThemeButton(theme: Theme(icons: ["🐶", "🐱", "🐭", "🐹"], cardColor: .yellow, label: "Animals")) {
                onThemeSelected($0)
            }
            ThemeButton(theme: Theme(icons: ["🍏", "🍎", "🍐", "🍊"], cardColor: .green, label: "Fruits")) {
                onThemeSelected($0)
            }
            ThemeButton(theme: Theme(icons: ["⚽️", "🏀", "🏈", "⚾️"], cardColor: .blue, label: "Sports")) {
                onThemeSelected($0)
            }
        }
    }
}
