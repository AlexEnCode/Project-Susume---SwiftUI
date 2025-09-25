//
//  ReadCellView.swift
//  Suzume
//
//  Created by apprenant92 on 19/09/2025.
//

import SwiftUI

struct MangaCellView: View {
 
    
    @Binding var manga: Manga
    
    var body: some View {
        VStack{
            HStack(alignment: .top) {
                Image(manga.coverImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                    .cornerRadius(8)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(manga.title)
                        .font(.headline)
                        .foregroundColor(.black)
                    Text(manga.author)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    HStack {
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text(String(format: "%.1f", manga.externalRating))
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                    }
                    
                }
                Spacer()
            }
    }
    }
}
