//
//  ContentView.swift
//  CafeMap
//
//  Created by 임채성 on 2024/08/27.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var authManager = AuthManager.shared
    
    var body: some View {
        if authManager.oauthTokenUser != nil {
            //MainTabView()
            ProfileView()
        } else {
            MainTabView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
