//
//  TutorialView.swift
//  Suzume
//
//  Created by apprenant93 on 24/09/2025.
//

import SwiftUI

struct TutorialView: View {
    @State private var showOverlay = true
    @State private var animateLeft = false
    @State private var animateRight = false

    var body: some View {
        
        ZStack {

            Color.clear
                .ignoresSafeArea()
                .overlay(
                    Group {
                        if showOverlay {
                            Color.black.opacity(0.6)
                                .ignoresSafeArea()
                                .overlay(
                                    HStack {
                                        VStack {
                                            HStack{
                                                Image(systemName: "arrow.left")
                                                Image(systemName: "xmark.circle.fill")
                                            }
                                            .font(.system(size: 45))
                                                .foregroundColor(.white)
                                                .offset(x: animateLeft ? -20 : 0)
                                                .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true), value: animateLeft)
                                            
                                        
                                        }
                                        Spacer()
                                        VStack {
                                            HStack{
                                                Image(systemName: "heart.circle.fill")
                                                Image(systemName: "arrow.right")
                                               
                                            }
                                            .font(.system(size: 45))
                                                .foregroundColor(.white)
                                                .offset(x: animateRight ? 20 : 0)
                                                .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true), value: animateRight)
                                            
                                           
                                        }
                                    }
                                    .padding(.horizontal, 40)
                                )
                                .onAppear {
                                    animateLeft = true
                                    animateRight = true
                                    
                                    // Masquer le tutoriel après 5 secondes
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                        withAnimation(.easeOut(duration: 2)) {
                                            showOverlay = false
                                        }
                                    }
                                }
                        }
                        
                    }
                        
                )
        }
        
    }
}

#Preview {
    TutorialView()
}
