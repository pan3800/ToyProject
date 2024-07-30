//
//  ContentView.swift
//  instagram_ui
//
//  Created by 임채성 on 2024/07/28.
//

import SwiftUI

struct ContentView: View {
    @State var isLaunching = false
    var body: some View {
        VStack {
            if isLaunching {
                LoginAuthorization()
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
