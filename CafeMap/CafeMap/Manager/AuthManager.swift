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
    
    static let shared = AuthManager()
    
    @Published var oauthToken: OAuthToken?
    @Published var currentUser: User?
    
    init() {
        oauthToken = TokenManager.manager.getToken()
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
        
                self.oauthToken = oauthToken
            }
        }
    }
    
    func kakaoLogout() {
        UserApi.shared.logout { error in
            if let error = error {
                print("로그아웃 에러: \(error.localizedDescription)")
            } else {
                print("로그아웃 성공")
                self.oauthToken = nil
            }
        }
    }
}
