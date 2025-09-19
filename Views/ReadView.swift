//
//  ReadView.swift
//  Suzume
//
//  Created by apprenant80 on 18/09/2025.
//

import SwiftUI

struct ReadView: View {

    @State private var selectedTab: Int = 0
  //   var manga : Manga

    var body: some View {

        NavigationStack {

            VStack(alignment: .leading) {

                HStack {
                    Button(action: { selectedTab = 0 }) {
                        Text("A lire")
                            .padding(4)
                            .frame(maxWidth: .infinity)
                            .background(
                                selectedTab == 0 ? Color.red : Color.clear
                            )
                            .foregroundColor(selectedTab == 0 ? .white : .black)
                            .cornerRadius(10)

                    }
                    Button(action: { selectedTab = 1 }) {
                        Text("Lus")
                            .padding(4)
                            .frame(maxWidth: .infinity)
                            .background(
                                selectedTab == 1 ? Color.red : Color.clear
                            )
                            .foregroundColor(selectedTab == 1 ? .white : .black)
                            .cornerRadius(10)

                    }
                }

                .padding(.horizontal)

                Divider()

                ScrollView {

                    ForEach(mangas) { manga in

                        NavigationLink {
                            DescriptionView(manga: manga)
                        } label: {
                            MangaCellView(manga: manga)
                        }

                    }

                }
            }

        }
    }
}

#Preview {
    ReadView()
}
