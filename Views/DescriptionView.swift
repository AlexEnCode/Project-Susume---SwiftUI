import SwiftUI

struct DescriptionView: View {

    @Binding var manga: Manga

    @State private var showCommentForm = false
    @State private var draftComment: String = ""
    @State private var draftRating: Int = 0
    
    var showStatusButtons: Bool = true   // Contrôle l'affichage des boutons isRead / isToRead

    var body: some View {
        
       

        ScrollView {

            ZStack(alignment: .topTrailing) {

                if showStatusButtons {
                    HStack(spacing: 16) {
                        Spacer()
                        Button(action: {
                            manga.isToRead.toggle()
                            if manga.isToRead {
                                manga.isRead = false
                                manga.notToRead = false
                            }
                        }) {
                            Image(systemName: manga.isToRead ? "heart.fill" : "heart")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(manga.isToRead ? .darkRed : .gray)
                                .frame(width: 40, height: 40)
                                .background {
                                    Circle()
                                        .fill(.white)
                                        .shadow(color: .black, radius: 1)
                                }
                                .scaleEffect(manga.isToRead ? 1.2 : 1.0)
                                .animation(.interpolatingSpring(stiffness: 300, damping: 15), value: manga.isToRead)
                        }
                    }
                    .padding(.top, 24)
                    .padding(.trailing, 16)
                    .zIndex(10)
                }
                
                Image(manga.backgroundImageName)
                    .resizable()
                    .scaledToFill()
                    .opacity(0.4)
                    .clipped()
                    .edgesIgnoringSafeArea(.top)
                    .frame(width: UIScreen.main.bounds.width, height: 300)
                    .mask(
                        LinearGradient(
                            gradient: Gradient(colors: [.clear, .white]),
                            startPoint: .bottom,
                            endPoint: .top
                        )
                        .ignoresSafeArea()
                    )
                    

                VStack(alignment: .center, spacing: 12) {
                    Image(manga.coverImageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 240)
                        .cornerRadius(16)
                        .shadow(radius: 7)
                        .padding()

                    Text(manga.title)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)

                    Text(manga.author)
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    
                    Text(
                        manga.isCompleted
                            ? "Terminé" : "En cours"
                    )

                    FlowLayout(spacing: 8) {
                        Text(manga.genre.rawValue.capitalized)
                            .font(.system(size: 12))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background {
                                RoundedRectangle(cornerRadius: 9)
                                    .foregroundStyle(Color.redSusume)
                            }
                            .foregroundStyle(.white)
                    }

                    FlowLayout(spacing: 8) {
                        ForEach(manga.tags, id: \.self) { tag in
                            Text(tag.rawValue.capitalized)
                                .font(.system(size: 12))
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background {
                                    RoundedRectangle(cornerRadius: 9)
                                        .foregroundStyle(
                                            Color.redLightSusume
                                        )
                                }
                        }
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        HStack(spacing: 6) {

                            VStack(alignment: .leading, spacing: 8) {

                                HStack {
                                    Text(
                                        "\(manga.externalRating, format: .number.precision(.fractionLength(1)))"
                                    )
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(.yellow)
                                }
                            }

                            Spacer()

                            if showStatusButtons {
                                Button(action: {
                                    if !manga.isRead {
                                        manga.isRead = true
                                        manga.isToRead = false
                                        manga.notToRead = false
                                        draftComment = manga.userComment ?? ""
                                        showCommentForm = true
                                    } else {
                                        manga.isRead = false
                                        manga.userComment = nil
                                        manga.userRating = nil
                                    }
                                }) {
                                    Text(manga.isRead ? "Lu" : "Non lu")
                                        .font(.system(size: 14, weight: .semibold))
                                        .frame(width: 70, height: 35)
                                        .background(manga.isRead ? Color.greenSusume : Color.gray)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                                .padding(.top, 8)
                                .sheet(isPresented: $showCommentForm) {
                                    CommentView(
                                        commentText: $draftComment,
                                        rating: $draftRating
                                    )
                                    .onDisappear {
                                        manga.userComment = draftComment
                                        manga.userRating = draftRating
                                    }
                                }
                            }
                        }
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Synopsis")
                            .font(.title2)
                            .fontWeight(.semibold)

                        Text(manga.synopsis)
                            .font(.body)
                    }

                    VStack(alignment: .leading, spacing: 16) {
                        if let myComment = manga.userComment,
                            !myComment.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
                        {

                            VStack(alignment: .leading, spacing: 8) {
                                Text("Mon commentaire")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                                if let rating = manga.userRating {
                                    HStack(spacing: 4) {
                                        ForEach(1...5, id: \.self) { index in
                                            Image(systemName: index <= rating ? "star.fill" : "star")
                                                .foregroundColor(.yellow)
                                        }
                                    }
                                }

                                Text(myComment)
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(.vertical, 8)
                        }

                        Text("Commentaires")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)

                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(manga.userComments) { comment in
                                CommentListView(comment: comment)
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .onAppear {
            draftComment = manga.userComment ?? ""
            draftRating = manga.userRating ?? 0
        }
     //   .toolbarBackground(.clear , for: .navigationBar, .tabBar)
        .toolbarBackground(.hidden)
    }
}
