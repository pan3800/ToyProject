//
//  SplashView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/09.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image("instagramLogo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .frame(width: 70, height: 50)
            
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
