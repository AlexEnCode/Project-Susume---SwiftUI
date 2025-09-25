//
//  NavBar.swift
//  Suzume
//
//  Created by apprenant93 on 18/09/2025.
//

import SwiftUI

enum Tab {
    case filtres, favoris, decouvrir, rechercher, profil
}
struct NavBar: View {

    
        @Binding var selectedTab: Tab

        var body: some View {
       
            TabView(selection: $selectedTab) {

                Text("Filtres View")
                    .tabItem {
                        Label("Filtres", systemImage: "slider.horizontal.3")
                    }
                    .tag(Tab.filtres)

                Text("Favoris View")
                    .tabItem {
                        Label("Favoris", systemImage: "books.vertical")
                    }
                    .tag(Tab.favoris)

                Text("Découvrir View")
                    .tabItem {
                        Label("Découvrir", image: "smallSUSUME") // Ton image personnalisée
                    }
                    .tag(Tab.decouvrir)

                Text("Rechercher View")
                    .tabItem {
                        Label("Rechercher", systemImage: "magnifyingglass")
                    }
                    .tag(Tab.rechercher)

                Text("Profil View")
                    .tabItem {
                        Label("Profil", systemImage: "person")
                    }
                    .tag(Tab.profil)
            }
            .tint(Color.redSusume) // Applique la couleur de l’onglet sélectionné
        }
        
}

#Preview {
    NavBar(selectedTab: .constant(.rechercher))
}
