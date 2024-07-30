//
//  SplashView.swift
//  instagram_ui
//
//  Created by 임채성 on 2024/07/30.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image("instagramLogo 1")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .frame(width: 130, height: 57)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
