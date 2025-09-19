//
//  StatutButton.swift
//  Suzume
//
//  Created by apprenant93 on 18/09/2025.
//

import SwiftUI

struct StatusButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(isSelected ? Color.redSusume : Color.gray.opacity(0.2))
                .foregroundColor(isSelected ? .white : .black)
                .clipShape(Capsule())
        }
    }
}

