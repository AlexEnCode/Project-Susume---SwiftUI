import SwiftUI

struct ProfileView: View {

    let mangas: [Manga]

    private var nombreFavoris: Int {
        mangas.filter { $0.isToRead }.count
    }

    private var nombreLus: Int {
        mangas.filter { $0.isRead }.count
    }
    
    // Helper struct pour les commentaires
    struct CommentAvecManga: Identifiable {
        let id = UUID()
        let mangaTitle: String
        let note: Int
        let commentaire: String
    }

    // Calcul des stats
    private var genrePrefere: GenreType? {
        let mangasLus = mangas.filter { $0.isRead }
        guard !mangasLus.isEmpty else { return nil }

        let genreCount = Dictionary(grouping: mangasLus, by: { $0.genre })
            .mapValues { $0.count }

        return genreCount.max(by: { $0.value < $1.value })?.key
    }

    private var stylesPreferes: [GenreTag] {
        let mangasLus = mangas.filter { $0.isRead }
        let allTags = mangasLus.flatMap { $0.tags }
        guard !allTags.isEmpty else { return [] }

        let tagCount = Dictionary(grouping: allTags, by: { $0 })
            .mapValues { $0.count }

        let sortedTags = tagCount.sorted { $0.value > $1.value } // tri décroissant

        return sortedTags.prefix(2).map { $0.key }
    }

    private var mesCommentaires: [CommentAvecManga] {
        var commentaires: [CommentAvecManga] = []

        for manga in mangas {
            if let comment = manga.userComment,
                let note = manga.userRating
            {

                commentaires.append(
                    CommentAvecManga(
                        mangaTitle: manga.title,
                        note: note,
                        commentaire: comment
                    )
                )
            }
        }

        return commentaires
    }

    
    
    
    
    var body: some View {

        NavigationStack {
            ScrollView {

                VStack(alignment: .center, spacing: 12) {
                    Image(.e)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(150)
                        
                    
                    
                    
                    Text("xXxDeku_du_69xXx")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                
                
                VStack(alignment: .leading, spacing: 20) {
                   
                    
                    VStack(alignment: .leading, spacing: 20) {
                        HStack(spacing: 0) {
                            VStack(spacing: 8) {
                                Text("favoris")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("\(nombreFavoris)")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    Image(systemName: "bookmark.fill")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                }
                            }
                            .frame(maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                            .padding()
                            .background(.gray)

                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 2, height: 80)

                            VStack(spacing: 8) {
                                Text(" lus")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("\(nombreLus)")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    Image(systemName: "books.vertical.fill")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                }
                            }
                            .frame(maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                            .padding()
                            .background(.gray)
                        }
                        .cornerRadius(20)
                    }
                    .padding(.horizontal)


              

                // Genre préféré
                VStack(alignment: .leading) {
                    Text("Genre préféré")
                        .font(.headline)
                    if let genre = genrePrefere {
                       
                            Text(genre.rawValue.capitalized)
                            .font(.system(size: 16))
                            .foregroundStyle(.white)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background {
                                RoundedRectangle(cornerRadius: 9)
                                    .foregroundStyle(
                                        Color.redSusume)
                            }
                    } else {
                        Text("Aucun manga lu")
                            .foregroundColor(.gray)
                    }
                }
                

                // Style préféré
                    VStack(alignment: .leading) {
                        Text("Styles préférés")
                            .font(.headline)
                        if stylesPreferes.isEmpty {
                            Text("Aucun tag trouvé")
                                .foregroundColor(.gray)
                        } else {
                            HStack(spacing: 10) {
                                ForEach(stylesPreferes, id: \.self) { tag in
                                    Text(tag.rawValue.capitalized)
                                        .font(.system(size: 16))
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 6)
                                        .background {
                                            RoundedRectangle(cornerRadius: 9)
                                                .foregroundStyle(Color.redLightSusume)
                                        }
                                }
                            }
                        }
                    }

               

                // Commentaires
                VStack(alignment: .leading) {
                    Text("Mes mangas")
                        .font(.headline)
                    if mesCommentaires.isEmpty {
                        Text("Aucun commentaire")
                            .foregroundColor(.gray)
                    } else {
                        ForEach(mesCommentaires, id: \.mangaTitle) {
                            comment in
                            VStack(alignment: .leading, spacing: 5) {
                                HStack {
                                    Text(comment.mangaTitle)
                                        .font(.subheadline)
                                    Spacer()
                                    Text("\(comment.note)/5")
                                        .font(.subheadline)
                                        .foregroundColor(.orange)
                                }
                            }
                            .padding(.vertical, 5)
                            Divider()
                        }
                    }
                }

                Spacer()
            }
            .padding()
        }
           
        }
        
    }
}

#Preview {
    ProfileView(mangas: mangas)
}
