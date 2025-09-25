//
//  SearchView.swift
//  Suzume
//
//  Created by apprenant80 on 18/09/2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    @Binding var allMangas: [Manga]

    var filteredMangas: [Binding<Manga>] {
        if searchText.isEmpty {
            return allMangas.indices.map { $allMangas[$0] }
        } else {
            return allMangas.indices
                .filter {
                    allMangas[$0].title.localizedCaseInsensitiveContains(
                        searchText
                    )
                }
                .map { $allMangas[$0] }
        }
    }

    var body: some View {
        NavigationStack {
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
            .searchable(text: $searchText, prompt: "Rechercher un manga")
        }
        .tint(.redSusume)
    }
}

#Preview {
    SearchView(allMangas: .constant(mangas))
}
