//
//  MainTabView.swift
//  Resolution_LoginView
//
//  Created by 임채성 on 2024/08/08.
//

import SwiftUI

struct MainTabView: View {
    @State var tabIndex = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {
            Text("홈")
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("홈")
                    }
                }
                .tag(0)
            
            Text("운동시설 지도")
                .tabItem {
                    Image(systemName: "map")
                }
                .tag(1)
            
            VStack {
                Text("Reels")
                Button {
                    // AuthManager.shared.signout()
                } label: {
                    Text("로그아웃")
                }
            }
            .tabItem {
                Image(systemName: "person.fill")
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
