//
//  RootView.swift
//  Suzume
//
//  Created by apprenant93 on 18/09/2025.
//

import SwiftUI

struct RootView: View {

    @State private var selectedTab: Tab = .decouvrir

    
    let allMangas: [Manga]
    @State private var filteredMangas: [Manga] = []

    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            // FILTRES
 /*           NavigationStack {
                FilterView(allMangas: mangas)
            }
            .tabItem {
                Label("Filtres", systemImage: "slider.horizontal.3")
            }
            .tag(Tab.filtres) */


            // DÉCOUVRIR (avec les résultats du filtre ?)
            NavigationStack {
                MainView(allMangas: allMangas, filteredMangas: $filteredMangas) // ou MainView si tu veux afficher les résultats ou sans resultat
            }
            .tabItem {
                Label("Découvrir", image: "LogoSusume") // Image custom dans Assets
            }
            .tag(Tab.decouvrir)

            
            // FAVORIS
            NavigationStack {
    //             ReadView()
                ReadView()
            }
            .tabItem {
                Label("Favoris", systemImage: "books.vertical")
            }
            .tag(Tab.favoris)


            // PROFIL
            NavigationStack {
             //   ProfilView() // À créer
            }
            .tabItem {
                Label("Profil", systemImage: "person")
            }
            .tag(Tab.profil)
            
            
            // RECHERCHER
            NavigationStack {
              //  SearchView() // À créer
            }
            .tabItem {
                Label("Rechercher", systemImage: "magnifyingglass")
            }
            .tag(Tab.rechercher)
        }
        .tint(.redSusume)
    }
}


#Preview {
    RootView(allMangas: mangas)
}
