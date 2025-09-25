//
//  CommentListView.swift
//  Suzume
//
//  Created by apprenant93 on 19/09/2025.
//
import SwiftUI

struct CommentListView: View {
    let comment: UserComment

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                
                Image(comment.avatar)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                       .overlay(
                           Circle().stroke(Color.gray, lineWidth: 1)
                       )
                   
                    
                
                Text(comment.username)
                    .font(.subheadline)
                    .fontWeight(.semibold)

                // Affichage de la note sous forme d'étoiles
                HStack(spacing: 2) {
                    ForEach(1...5, id: \.self) { index in
                        Image(systemName: index <= comment.otherUserNote ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                }

                Spacer()

                Text(comment.date, style: .date)
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            Text(comment.comment)
                .font(.body)
                .foregroundColor(.primary)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.vertical, 8)
        Divider()
    }
}
