import SwiftUI

struct MainView: View {

    // penser a mettre manga dans RootView pour la donné persistante !!!

    // Attention, les boutons ne changent pas la valeur des booléens isToRead ==

    var mangas: [Manga] {
        let source = filteredMangas.isEmpty ? allMangas : filteredMangas
        return source.filter { !$0.isRead && !$0.isToRead }
    }

    
    @Binding var allMangas: [Manga]
    @Binding var filteredMangas: [Manga]

    @State private var currentIndex = 0
    @State private var offset: CGSize = .zero
    @State private var showButtons = false

    @State private var animate = false

    @State private var selectedManga: Manga? = nil  //manga selectionné pour "info"

    
    @State private var favoriteMangas: [Manga] = []
    @State private var rejectedMangas: [Manga] = []

    // selection pour info

    private func swipeAway(to direction: CGFloat, isToRead: Bool) {
        withAnimation(.easeInOut(duration: 0.3)) {
            offset = CGSize(width: direction, height: 0)
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            let swipedManga = mangas[currentIndex]

            if let indexInAll = allMangas.firstIndex(where: {
                $0.id == swipedManga.id
            }) {
                allMangas[indexInAll].isToRead = isToRead
                allMangas[indexInAll].isRead = false
                allMangas[indexInAll].notToRead = !isToRead
            }

            currentIndex += 1
            offset = .zero
        }
    }

    func cardView(for manga: Manga) -> some View {
        // On cherche un binding sur le manga dans allMangas
        if let index = allMangas.firstIndex(where: { $0.id == manga.id }) {
            let mangaBinding = $allMangas[index]

            return AnyView(
                VStack(alignment: .leading) {
                    ZStack(alignment: .bottom) {
                    
                        // Image principale
                        Image(manga.coverImageName)
                            .resizable()
                            .scaledToFit()

                        VStack(alignment: .leading, spacing: 8) {

                            // Bouton info en haut à droite
                            HStack {
                                Spacer()
                                
                                
                                NavigationLink(destination: DescriptionView(manga: mangaBinding, showStatusButtons: false)) {
                                    Image(systemName: "info")
                                        .font(.system(size: 30, weight: .bold))
                                        .foregroundColor(.redSusume)
                                        .frame(width: 56, height: 56)
                                        .background {
                                            Circle()
                                                .stroke(.redSusume)
                                                .fill(.white)
                                                .shadow(color: .black, radius: 2)
                                        }
                                        .scaleEffect(animate ? 1 : 0.9)
                                        .onAppear {
                                            withAnimation(.spring(duration: 3).repeatForever(autoreverses: true)) {
                                                animate = true
                                            }
                                        }
                                }
                                
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                           // .padding(.top, 16)

                            // Infos sur le manga
                            VStack(alignment: .leading, spacing: 8) {
                                HStack {
                                    Text(manga.title)
                                        .font(.title2)
                                        .fontWeight(.bold)

                                    Spacer()

                                    HStack(spacing: 4) {
                                        Text(String(format: "%.1f", manga.externalRating))
                                            .font(.body)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                            .font(.system(size: 14, weight: .light))
                                    }
                                }

                                // Genre principal
                                Text(manga.genre.rawValue.capitalized)
                                    .font(.system(size: 12))
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 6)
                                    .background {
                                        RoundedRectangle(cornerRadius: 8)
                                            .foregroundStyle(.redSusume)
                                    }
                                    .foregroundStyle(.white)

                                // Auteur
                                Text("par \(manga.author)")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)

                                // Résumé court
                                Text(manga.shortSummary)
                                    .font(.footnote)

                                // Tags
                                FlowLayout(spacing: 8) {
                                    ForEach(manga.tags, id: \.self) { tag in
                                        Text(tag.rawValue.capitalized)
                                            .font(.system(size: 12))
                                            .padding(.horizontal, 12)
                                            .padding(.vertical, 6)
                                            .background {
                                                RoundedRectangle(cornerRadius: 9)
                                                    .foregroundStyle(.redLightSusume)
                                            }
                                    }
                                }
                            }
                            .padding(12)
                            .background(Color.white.opacity(0.95))
                            .cornerRadius(12)
                            .padding()
                        }
                    }
                }
                .cornerRadius(12)
                .shadow(radius: 5)
                .padding(.top, 34)
            )
        } else {
            return AnyView(EmptyView())
        }
    }


    // La validation du swipe
    func swipeButtons(for manga: Manga) -> some View {
        ZStack {
            HStack {
                Spacer()
                if showButtons {
                    Button(action: {
                        swipeAway(to: 300, isToRead: true)
                    }) {
                        Image(systemName:"xmark" )
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.redSusume)
                            .clipShape(Circle())
                    }
                    .padding(.trailing, 32)
                    .transition(.scale.combined(with: .opacity))
                }
            }

            HStack {
                if showButtons {
                    Button(action: {
                        swipeAway(to: -300, isToRead: false)
                    }) {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.redLightSusume)
                            .clipShape(Circle())

                    }
                    .padding(.leading, 8)
                    .transition(.scale.combined(with: .opacity))
                }
                Spacer()
            }
        }
    }

    var body: some View {

        // FILTRES
        //    NavigationStack {
        //        FilterView(allMangas: mangas)
        //    }
        //    .tabItem {
        //        Label("Filtres", systemImage: "slider.horizontal.3")
        //    }
        //    .tag(Tab.filtres)

        VStack {
            HStack {
                // logo ?

                Image(.longSUSUME)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 30)
                    .foregroundColor(.redSusume)
                    .padding(.horizontal, 12)
                Spacer()

                
                NavigationLink(
                    destination: FilterView(
                        allMangas: $allMangas,
                        filteredMangas: $filteredMangas
                    )
                ) {
                    Label("", systemImage: "line.3.horizontal.decrease")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .cornerRadius(12)
                }
            }
            .padding(4)

            ScrollView(showsIndicators: false) {
                VStack {
                    if currentIndex < mangas.count {
                        let manga = mangas[currentIndex]

                        ZStack {
                            // Boutons animés
                            swipeButtons(for: manga)

                            //  manga
                            cardView(for: manga)
                                .offset(x: offset.width)
                                .rotationEffect(
                                    .degrees(Double(offset.width / 20))
                                )
                                .gesture(
                                    DragGesture()
                                        .onChanged { gesture in
                                            offset = gesture.translation
                                            withAnimation {
                                                showButtons = true
                                            }
                                        }
                                        .onEnded { _ in
                                            withAnimation {
                                                showButtons = false
                                            }

                                            if offset.width < -100 {
                                                swipeAway(
                                                    to: -300,
                                                    isToRead: false
                                                )
                                            } else if offset.width > 100 {
                                                swipeAway(
                                                    to: 300,
                                                    isToRead: true
                                                )
                                            } else {
                                                withAnimation(.spring()) {
                                                    offset = .zero
                                                }
                                            }
                                        }
                                )
                                .animation(.spring(), value: offset)
                        }
                        .frame(height: 600)

                       

                    } else {
                        Text("Plus de mangas à afficher.")
                            .font(.title2)
                            .foregroundColor(.gray)
                            .padding()

                        if !favoriteMangas.isEmpty {
                            Text(
                                "Vous avez ajouté \(favoriteMangas.count) en favoris "
                            )
                            .font(.subheadline)
                            .padding(.top)
                        }

                        if !rejectedMangas.isEmpty {
                            Text("\(rejectedMangas.count)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .padding(.bottom)
                        }
                    }
                }
                .padding(8)
                .navigationBarBackButtonHidden(true)
            }
        }
        .padding(4)
    }
}
