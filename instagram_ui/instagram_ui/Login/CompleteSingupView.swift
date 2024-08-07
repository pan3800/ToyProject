//
//  CompleteSingupView.swift
//  instagram_ui
//
//  Created by 임채성 on 2024/07/31.
//

import SwiftUI

struct CompleteSingupView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                Image("instagramLogo2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                
                Spacer()
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 172, height: 172)
                    .foregroundColor(Color.gray)
                    .opacity(0.5)
                    .overlay {
                        Circle().stroke(Color.gray, lineWidth: 2)
                            .opacity(0.5)
                            .frame(width: 185, height: 185)
                    }
                
                Text("애구마 님, Instagram에 오신 것을 환영합니다.")
                    .font(.title)
                    .padding(.top, 30)
                    .padding(.horizontal)
                
                Spacer()
                
                
            }
        }
    }
}

struct CompleteSingupView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSingupView()
    }
}
