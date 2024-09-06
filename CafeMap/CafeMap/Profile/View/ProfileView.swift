//
//  ProfileView.swift
//  CafeMap
//
//  Created by 임채성 on 2024/09/03.
//

import SwiftUI

struct ProfileView: View {
    
    
    var body: some View {
        VStack {
            Text("ProfileView")
            
            Button {
                AuthManager.shared.kakaoLogout()
            } label: {
                Text("로그아웃")
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
