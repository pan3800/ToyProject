//
//  AuthManager.swift
//  CafeMap
//
//  Created by 임채성 on 2024/09/05.
//

import Foundation
import KakaoSDKAuth
import KakaoSDKUser

class AuthManager: ObservableObject {
    
    @Published var oauthTokenUser: OAuthToken?
    
    static let shared = AuthManager()
 
    init() {
        
    }
    
    func kakaoLogin() async {
        if (UserApi.isKakaoTalkLoginAvailable()) {
            kakaoLonginWithApp()
        } else {
            kakaoLoginWithAccount()
        }
    }
    
    func kakaoLonginWithApp() {
        UserApi.shared.loginWithKakaoTalk { oauthToken, error in
            if let error = error {
                print(error)
            }
            else {
                print("loginWithKakaoTalk() success.")
                //do something
                _ = oauthToken
            }
        }
    }
    
    func kakaoLoginWithAccount() {
        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
            if let error = error {
                print("로그인 에러: \(error.localizedDescription)")
            }
            else {
                print("토큰 값 확인:", oauthToken)
              
                print("loginWithKakaoAccount() success.")
                self.oauthTokenUser = oauthToken
            }
        }
    }
}
