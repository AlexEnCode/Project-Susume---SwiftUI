import SwiftUI

struct CommentView: View {
    @Environment(\.dismiss) var dismiss

    @Binding var commentText: String
    @Binding var rating: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {

            Text("Déjà lu ce manga ?")
                .font(.title)
                .fontWeight(.bold)

            Text("Laisse ton commentaire !")
                .font(.title3)
                .foregroundColor(.secondary)

            // Étoiles de notation
            HStack {
                ForEach(1...5, id: \.self) { index in
                    Image(systemName: index <= rating ? "star.fill" : "star")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.yellow)
                        .onTapGesture {
                            rating = index
                        }
                }
            }
            .padding(.vertical, 8)

            Text("Les avis des lecteurs aident les autres à faire leur choix. Merci pour ton retour !")
                .font(.body)
                .foregroundColor(.secondary)

            // Champ de texte
            ZStack(alignment: .topLeading) {
                TextEditor(text: $commentText)
                    .frame(height: 120)
                    .padding(12)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                    )

                if commentText.isEmpty {
                    Text("Écris ton avis ici...")
                        .foregroundColor(.gray)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 16)
                        .allowsHitTesting(false)
                }
            }

            Button {
                dismiss()
            } label: {
                Text("Publier")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.redSusume)
                    .cornerRadius(12)
            }
            .padding(.top, 10)
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Fermer") {
                    dismiss()
                }
            }
        }
    }
}
