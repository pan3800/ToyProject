//
//  MainTabView.swift
//  CafeMap
//
//  Created by 임채성 on 2024/08/27.
//

import SwiftUI

struct MainTabView: View {
    @State var tabIndex = 2
    @StateObject var authManager = AuthManager.shared
    
    var body: some View {
        TabView(selection: $tabIndex) {
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            VStack {
                if authManager.oauthTokenUser != nil {
                    ProfileView()
                } else {
                    LoginView()
                }
            }
            .tabItem {
                Image(systemName: "person.fill")
            }
            .tag(2)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
