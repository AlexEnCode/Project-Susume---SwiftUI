import SwiftUI

struct MainView: View {

    // penser a mettre manga dans RootView pour la donné persistante !!!


    
    var mangas: [Manga] {
        filteredMangas.isEmpty ? allMangas : filteredMangas
    }
    
    let allMangas: [Manga]
    @Binding var filteredMangas: [Manga]

    @State private var currentIndex = 0
    @State private var offset: CGSize = .zero
    @State private var showButtons = false

    @State private var animate = false
    
    @State private var selectedManga: Manga? = nil //manga selectionné pour "info"

    @State private var favoriteMangas: [Manga] = []
    @State private var rejectedMangas: [Manga] = []

    
     // selection pour info
    
    
    private func swipeAway(to direction: CGFloat, isToRead: Bool) {
        withAnimation(.easeInOut(duration: 0.3)) {
            offset = CGSize(width: direction, height: 0)
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            if isToRead {
                favoriteMangas.append(mangas[currentIndex])
            } else {
                rejectedMangas.append(mangas[currentIndex])
            }

            currentIndex += 1
            offset = .zero
        }
    }

    func cardView(for manga: Manga) -> some View {

        VStack(alignment: .leading, spacing: 8) {

            ZStack(alignment: .bottom) {
                Image(manga.coverImageName)
                    .resizable()
                    .scaledToFit()

                VStack(alignment: .leading, spacing: 8) {

                    //nav button pour info sur manga (Zack)
                    HStack {
                        Spacer()

                        NavigationLink(destination: DescriptionView(manga: manga)) {
                            Image(systemName: "info")
                                .scaleEffect(animate ? 1.2 : 0.8)
                                .onAppear {
                                    withAnimation(
                                        .spring(duration: 0.8).repeatForever(autoreverses: true)
                                    ) {
                                        animate = true
                                    }
                                }
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(.redSusume)
                                .frame(width: 56, height: 56)
                                .background(Color.white)
                                .clipShape(Circle())
                                .shadow(radius: 2)
                        }

                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .padding(.top, 16)
                    
                    // la card d'info en bas
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
                                    .font(.system(size: 14, weight: .light, design: .default))                            }
                        }
                        Text("par \(manga.author)")
                            .font(.subheadline)
                            .foregroundColor(.gray)

                        Text(manga.shortSummary)
                            .font(.footnote)
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
                        Image(systemName: "heart.fill")
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
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.redLightSusume)
                            .clipShape(Circle())

                    }
                    .padding(.leading, 32)
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

                Image(.logoTitleSUSUME)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 30)
                Spacer()

                NavigationLink(destination: FilterView(allMangas: allMangas, filteredMangas: $filteredMangas)) {
                    Label("", systemImage: "line.3.horizontal.decrease.circle")
                        .font(.title)
                        .foregroundColor(.redSusume)
                        .cornerRadius(12)
                }
            }
            .padding(.horizontal)

            
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

                        // Tags
                        FlowLayout(spacing: 8) {
                            Text(manga.genre.rawValue.capitalized)
                                .font(.system(size: 12))
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background {
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundStyle(.redSusume)
                                }
                                .foregroundStyle(.white)

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

                        // Boutons classiques en bas
                        HStack(spacing: 16) {
                            Button(action: {
                                swipeAway(to: -250, isToRead: false)
                            }) {
                                Image(systemName: "xmark")
                                    .font(.title2)
                                    .foregroundColor(.redSusume)
                                    .frame(width: 80, height: 50)
                                    .background(Color.lightSusume)
                                    .cornerRadius(12)
                            }

                            Button(action: {
                                swipeAway(to: 250, isToRead: true)
                            }) {
                                Image(systemName: "heart.fill")
                                    .font(.title2)
                                    .foregroundColor(.redSusume)
                                    .frame(width: 80, height: 50)
                                    .background(Color.lightSusume)
                                    .cornerRadius(12)
                            }
                        }
                        .padding()
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
                .padding(12)
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    MainView(
        allMangas: [],
        filteredMangas: .constant([])
    )
}
