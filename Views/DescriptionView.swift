import SwiftUI

struct DescriptionView: View {
    
    let manga: Manga
    
    var body: some View {
        
        HStack {
            // logo ?

            Image(.logoTitleSUSUME)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 30)
            Spacer()

           
        }
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                HStack(alignment: .top, spacing: 16) {
                    Image(manga.coverImageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 240)
                        .cornerRadius(16)
                        .shadow(radius: 7)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(manga.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(manga.author)
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                        HStack(spacing: 6) {
                            Image(systemName: "book.fill")
                                .foregroundStyle(.redSusume)
                            Text(manga.isCompleted ? "Terminé" : "En cours")
                                .foregroundColor(.primary)
                        }
                        
                        HStack(spacing: 6) {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                            Text("\(manga.externalRating, format: .number.precision(.fractionLength(1)))")
                        }
                        
                        // Bouton Lu
                        Button {
                            print("lu")
                        } label: {
                            Text("Lu")
                                .font(.system(size: 14, weight: .semibold))
                                .frame(width: 70, height: 35)
                                .background(.redSusume)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.top, 8)
                    }
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Type")
                        .font(.title2)
                        .fontWeight(.semibold)
                    FlowLayout(spacing: 8){
                        Text(manga.genre.rawValue.capitalized)
                            .font(.system(size: 12))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background {
                                RoundedRectangle(cornerRadius: 9)
                                    .foregroundStyle(.redSusume)
                            }
                            .foregroundStyle(.white)
                    }
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Genres")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
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
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Synopsis")
                        .fontWeight(.semibold)
                    
                    Text(manga.synopsis)
                        .font(.body)
                }
                Text("Commentaires")
                    .font(.title2)
                    .fontWeight(.semibold)
                
            }
       

                VStack(alignment: .leading, spacing: 8) {
                    
                    
                    
                    ForEach(manga.userComments) { comment in
                        CommentListView(comment: comment)
                    }
    
                }
                
                
            }.padding(.horizontal)
        }
    }


#Preview {
    DescriptionView(manga: mangas.first!)
}
