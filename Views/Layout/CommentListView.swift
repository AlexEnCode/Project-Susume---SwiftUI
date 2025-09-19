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
                Text(comment.username)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                Text(comment.date, style: .date)
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            Text(comment.comment)
                .font(.body)
                .foregroundColor(.primary)
                .fixedSize(horizontal: false, vertical: true)

            Divider()
        }
        .padding(.vertical, 4)
    }
}
