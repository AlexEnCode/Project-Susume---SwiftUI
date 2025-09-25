import SwiftUI

struct FilterView: View {
    
    @State private var filter = FilterCriteria()
    @State private var navigateToResults = false
    
    @Binding var allMangas: [Manga]
    @Binding var filteredMangas: [Manga]

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
                        Text("Nombre de tomes")
                            .font(.headline)
                        
                        HStack {
                            Spacer()
                            
                            Stepper(value: $filter.maxVolumes, in: 1...150, step: 10) {
                                Text("Maximum : \(Int(filter.maxVolumes)) tomes")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                        }
                    }
                    .onAppear {
                        if filter.maxVolumes < 1 || filter.maxVolumes > 150 {
                            filter.maxVolumes = 10
                        }
                    }
                    
                    // Statut (terminée ou non)
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Statut ").font(.headline)
                        HStack {
                            StatusButton(title: "En cours", isSelected: filter.isCompleted == false) {
                                filter.isCompleted = false
                            }
                            StatusButton(title: "Peu m'importe", isSelected: filter.isCompleted == nil) {
                                filter.isCompleted = nil
                            }
                            StatusButton(title: "Terminée", isSelected: filter.isCompleted == true) {
                                filter.isCompleted = true
                            }
                        }
                    }
                    
                    // Rechercher
                    HStack {
                        Spacer()
                        Button(action: {
                            filteredMangas = allMangas.filter { manga in
                                (filter.selectedGenres.isEmpty || filter.selectedGenres.contains(manga.genre)) &&
                                (filter.selectedTags.isEmpty || !filter.selectedTags.isDisjoint(with: Set(manga.tags))) &&
                                (Double(manga.numberOfVolumes) <= filter.maxVolumes) &&
                                (filter.isCompleted == nil || filter.isCompleted == manga.isCompleted)
                            }
                            navigateToResults = true
                        }) {
                            Text("Filtrer")
                                .font(.system(size: 24, weight: .semibold))
                                .frame(maxWidth: .infinity, minHeight: 36)
                                .background(Color.redSusume)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .padding()
                    }
                }
                .navigationDestination(isPresented: $navigateToResults) {
                    MainView(allMangas: $allMangas, filteredMangas: $filteredMangas)
                }
            }
            .padding()
        }
    }
}
