//
//  ProfileView.swift
//  CafeMap
//
//  Created by 임채성 on 2024/09/03.
//

import SwiftUI
import KakaoSDKUser
import KakaoSDKAuth

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (alignment: .leading){
                    HStack {
                        if let profileImage = viewModel.profileImage {
                            profileImage
                                .resizable()
                                .frame(width: 75, height: 75)
                                .clipShape(Circle())
                                .padding(.bottom, 10)
                        } else {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 75, height: 75)
                                .clipShape(Circle())
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                        }
                        
                        
                        VStack (alignment: .leading){
                            
                            if let nickname = viewModel.nickname {
                                Text(nickname)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                            } else {
                                Text("pan5158@naver.com")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                            }
                            
                            if let email = viewModel.email {
                                Text(email)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                            } else {
                                Text("임채무")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                            }
                        }
                    }
                    .padding()
                    .padding(.horizontal)
                    
                }
            }
            
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
