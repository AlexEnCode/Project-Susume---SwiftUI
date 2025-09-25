import SwiftUI

struct RootView: View {
    @State private var showLanding = true
    @State private var landingOpacity: Double = 1.0

    @State private var selectedTab: Tab = .decouvrir
    @State private var allMangas: [Manga] = mangas
    @State private var filteredMangas: [Manga] = []

    
    @State private var showTutorial = false
    
   
    
    var body: some View {
        ZStack {
            // Ton contenu principal
            TabView(selection: $selectedTab) {
                NavigationStack {
                    ZStack{
                        
                        
                        MainView(allMangas: $allMangas, filteredMangas: $filteredMangas)
                        
                    }
                }
                .tabItem {
                    Label("Découvrir", image: "smallSUSUME")
                }
                .tag(Tab.decouvrir)

                NavigationStack {
                    ReadView(mangas: $allMangas)
                }
                .tabItem {
                    Label("Favoris", systemImage: "books.vertical")
                }
                .tag(Tab.favoris)

                SearchView(allMangas: $allMangas)
                    .tabItem {
                        Label("Rechercher", systemImage: "magnifyingglass")
                    }
                    .tag(Tab.rechercher)
                
                NavigationStack {
                    ProfileView(mangas: allMangas)
                }
                .tabItem {
                    Label("Profil", systemImage: "person")
                }
                .tag(Tab.profil)

               
            }
            .tint(.redSusume)

            
            // LE DEBUT DU TRUC
            
            // LandingView
            if showLanding {
                LandingView()
                    .opacity(landingOpacity)
                    .transition(.opacity)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            withAnimation(.easeOut(duration: 0.8)) {
                                landingOpacity = 0.0
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now()
                            ) {
                                
                                showLanding = false
                                showTutorial = true
                            }
                        }
                    }
            }
            if showTutorial {
                TutorialView()
                                                }
                        }
                    }
            }




#Preview {
    RootView()
}
