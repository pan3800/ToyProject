//
//  ContentView.swift
//  Splash_Screen
//
//  Created by 임채성 on 2024/07/24.
//

import SwiftUI

struct ContentView: View {
    @State var isLaunching = false
    
    var body: some View {
        VStack {
            if isLaunching {
                MainView()
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

struct SplashView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image("splash_image")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    
            }
        }
    }
}

struct MainView: View {
    var body: some View {
        Text("This is the main view")
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
