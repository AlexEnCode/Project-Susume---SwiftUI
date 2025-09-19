import SwiftUI

struct FilterView: View {
    
    @State private var filter = FilterCriteria()
    @State private var navigateToResults = false
    
    let allMangas: [Manga]
    @Binding var filteredMangas: [Manga]
    
    
    // Liste filtrée
    /*  var filteredMangas: [Manga] {
     allMangas.filter { manga in
     // Genre principal
     (filter.selectedGenres.isEmpty || filter.selectedGenres.contains(manga.genre)) &&
     // Tags (au moins un en commun)
     (filter.selectedTags.isEmpty || !filter.selectedTags.isDisjoint(with: Set(manga.tags))) &&
     // Nombre de tomes
     Double(manga.numberOfVolumes) <= filter.maxVolumes &&
     // Statut
     (filter.isCompleted == nil || filter.isCompleted == manga.isCompleted)
     }
     } */
    
    func toggleSelection<T: Hashable>(item: T, in set: inout Set<T>) {
        if set.contains(item) {
            set.remove(item)
        } else {
            set.insert(item)
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    // Genre
                    Text("Quel genre ?").font(.headline)
                    FlowLayout {
                        ForEach(GenreType.allCases, id: \.self) { genre in
                            SelectableButton(
                                label: genre.rawValue.capitalized,
                                isSelected: filter.selectedGenres.contains(genre)
                            ) {
                                toggleSelection(item: genre, in: &filter.selectedGenres)
                            }
                        }
                    }
                    
                    // Tags
                    Text("Quel type ?").font(.headline)
                    FlowLayout {
                        ForEach(GenreTag.allCases, id: \.self) { tag in
                            SelectableButton(
                                label: tag.rawValue.capitalized,
                                isSelected: filter.selectedTags.contains(tag)
                            ) {
                                toggleSelection(item: tag, in: &filter.selectedTags)
                            }
                        }
                    }
                    
                    // Nombre de tomes
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Nombre de mangas max").font(.headline)
                        Slider(value: $filter.maxVolumes, in: 1...300, step: 1)
                            .tint(.redSusume)
                            .frame(width: 200, height: 20)
                        Text("Maximum : \(Int(filter.maxVolumes)) tomes")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    // Statut (terminée ou non)
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Statut de la série").font(.headline)
                        HStack {
                            StatusButton(title: "Tous", isSelected: filter.isCompleted == nil) {
                                filter.isCompleted = nil
                            }
                            StatusButton(title: "Terminée", isSelected: filter.isCompleted == true) {
                                filter.isCompleted = true
                            }
                            StatusButton(title: "En cours", isSelected: filter.isCompleted == false) {
                                filter.isCompleted = false
                            }
                        }
                    }
                    
                    // Rechercher
                    Button(action: {
                        filteredMangas = allMangas.filter { manga in
                            (filter.selectedGenres.isEmpty || filter.selectedGenres.contains(manga.genre)) &&
                            (filter.selectedTags.isEmpty || !filter.selectedTags.isDisjoint(with: Set(manga.tags))) &&
                            (Double(manga.numberOfVolumes) <= filter.maxVolumes) &&
                            (filter.isCompleted == nil || filter.isCompleted == manga.isCompleted)
                        }
                        navigateToResults = true
                    }) {
                        Image(systemName: "arrow.right")
                            .bold()
                            .font(.system(size: 40))
                            .foregroundColor(.redSusume)
                    }
                    .navigationDestination(isPresented: $navigateToResults) {
                        MainView(allMangas: allMangas, filteredMangas: $filteredMangas)
                    }
                }
            }
            .padding(.top)
        }
        .padding()
 
    }
}



#Preview {
    FilterView(
        allMangas: mangas,
        filteredMangas: .constant([])
    )
}
