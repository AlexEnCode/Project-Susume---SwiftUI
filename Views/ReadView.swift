//
//  ReadView.swift
//  Suzume
//
//  Created by apprenant80 on 18/09/2025.
//

import SwiftUI


import SwiftUI

struct ReadView: View {
    @State private var selectedTab: Int = 0
    @State private var showToRead: Bool = true
    @Binding var mangas: [Manga]
    
    @State private var fadeEnd: CGFloat = 1.0
    
    var filteredMangas: [Binding<Manga>] {
        mangas.indices
            .filter { showToRead ? mangas[$0].isToRead : mangas[$0].isRead }
            .map { $mangas[$0] }
    }

    var body: some View {
        NavigationStack {
            VStack {
                // Toggle lu / pas lu
                HStack(spacing: 0) {
                    Button(action: {
                        showToRead = true
                    }) {
                        Text("À lire")
                            .fontWeight(.bold)
                            .foregroundColor(showToRead ? .black : .white)
                            .frame(maxWidth: .infinity, maxHeight: 30)
                            .background(showToRead ? .white : .clear)
                    }
                    .cornerRadius(4)
                    .padding(2)
                    
                    Button(action: {
                        showToRead = false
                    }) {
                        Text("Lus")
                            .fontWeight(.bold)
                            .foregroundColor(!showToRead ? .black : .white)
                            .frame(maxWidth: .infinity, maxHeight: 30)
                            .background(!showToRead ? .white : .clear)
                    }
                    .cornerRadius(4)
                    .padding(2)
                }
                .frame(height: 36)
                .background(.redSusume)
                .cornerRadius(4)
                .padding(.horizontal)

                // Liste des mangas
                List {
                    ForEach(filteredMangas) { $manga in
                        NavigationLink {
                            DescriptionView(manga: $manga)
                        } label: {
                            MangaCellView(manga: $manga)
                        }
                    }
                }
                .listStyle(.plain)
            }
        }
    }
}



#Preview {
    PreviewWrapper()
}

private struct PreviewWrapper: View {
    @State var previewMangas: [Manga] = mangas 

    var body: some View {
        ReadView(mangas: $previewMangas)
    }
}
