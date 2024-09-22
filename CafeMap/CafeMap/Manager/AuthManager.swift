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
   
    
    init() {
        oauthToken = TokenManager.manager.getToken()
    }
    
    // 카카오 앱 설치 확인 후 로그인
    func kakaoLogin() async {
        if (UserApi.isKakaoTalkLoginAvailable()) {
            kakaoLonginWithApp()
        } else {
            kakaoLoginWithAccount()
        }
    }
    
    // 카카오 설치가 되어있으면 로그인
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
    
    // 카카오 계정 로그인
    func kakaoLoginWithAccount() {
        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
            if let error = error {
                print("로그인 에러: \(error.localizedDescription)")
            }
            else {
                print("loginWithKakaoAccount() success.")
            
                self.oauthToken = oauthToken

            }
        }
    }
    
    // 카카오 로그아웃
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
    
    // 카카오 사용자 정보 가져오기
    func getUserInfo() {
        UserApi.shared.me() {( kakaoUser, error) in
            if let error = error {
                print(error)
            }
            else {
                print("me() success.")
                
                
            }
        }
    }
    
    
}
