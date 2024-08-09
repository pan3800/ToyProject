//
//  ContentView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/08.
//

import SwiftUI

struct ContentView: View {
    @State var isLaunching = false
    var body: some View {
        VStack {
            if isLaunching {
                LoginView()
            } else {
                SplashView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    isLaunching = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
