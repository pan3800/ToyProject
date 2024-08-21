//
//  ContentView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/08.
//

import SwiftUI

struct ContentView: View {
    @StateObject var signupViewModel = SignupViewModel()
    @StateObject var authManager = AuthManager.shared
    //@State var isLaunching = false
    
    var body: some View {
        
        if authManager.currentAuthUser != nil || authManager.oauthTokenUser != nil {
            MainTabView()
        } else {
            LoginView()
        }
        
//        VStack {
//            if isLaunching {
//                LoginView()
//                    .environmentObject(signupViewModel)
//            } else {
//                SplashView()
//            }
//        }
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                withAnimation {
//                    isLaunching = true
//                }
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
