//
//  LandingView.swift
//  Suzume
//
//  Created by apprenant80 on 18/09/2025.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(.SUSUME)
                .resizable()
                .frame(width:200, height: 210)
                .foregroundStyle(.redSusume)
                .padding()
//            Text("SUSUME")
//                .foregroundStyle(.redSusume)
//                .font(.largeTitle)
            
                .padding()
            
            Text("Choisissons ensemble votre prochaine lecture")
                .foregroundStyle(.gray)
                .padding(.vertical)
            Spacer()
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .transition(.opacity)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation(.easeOut(duration: 0.8)) {
                    
                }
            }
        }
    }
}

    #Preview {
        LandingView()
    }
