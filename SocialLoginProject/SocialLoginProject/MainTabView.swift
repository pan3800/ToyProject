//
//  MainTabView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/11.
//

import SwiftUI

struct MainTabView: View {
    @State var tabIndex = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(0)
            
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(1)
       
            
            VStack {
                Text("Profile")
                Button {
                } label: {
                    Text("로그아웃")
                }
                
            }
            .tabItem {
                Image(systemName: "person.circle")
            }
            .tag(3)
            
            
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
