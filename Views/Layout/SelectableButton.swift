//
//  SelectableButton.swift
//  Suzume
//
//  Created by apprenant93 on 18/09/2025.
//

import SwiftUI

struct SelectableButton: View {
    let label: String
    let isSelected: Bool
    let action: () -> Void
    
    func toggleSelection<T: Hashable>(item: T, in set: inout Set<T>) {
       if set.contains(item) {
           set.remove(item)
       } else {
           set.insert(item)
       }
   }


    var body: some View {
        Text(label)
            .font(.subheadline)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(isSelected ? Color.redSusume : Color.gray.opacity(0.2))
            .foregroundColor(isSelected ? .white : .black)
            .clipShape(Capsule())
            .onTapGesture {
                action()
            }
    }
}

