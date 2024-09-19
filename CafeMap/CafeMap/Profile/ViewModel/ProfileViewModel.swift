//
//  ProfileViewModel.swift
//  CafeMap
//
//  Created by 임채성 on 2024/09/08.
//

import Foundation
import KakaoSDKUser
import KakaoSDKAuth


class ProfileViewModel : ObservableObject{
    @Published var email: String? = nil
    @Published var nickname: String? = nil
    @Published var errorMessage: String? = nil
    
    init() {
        fetchUserData()
    }
    
    func fetchUserData() {
         UserApi.shared.me { [weak self] (kakaoUser, error) in
             if let error = error {
                 self?.errorMessage = "Error: \(error.localizedDescription)"
             } else {
                 self?.email = kakaoUser?.kakaoAccount?.email
                 self?.nickname = kakaoUser?.kakaoAccount?.profile?.nickname
             }
         }
     }
 
    
}
