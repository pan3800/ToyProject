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
    @Published var currentUser: User?
    
    static let shared = AuthManager()
 
    init() {
        self.oauthTokenUser = TokenManager.manager.getToken()
    }
    
//    func fetchUserInfo() {
//        UserApi.shared.me { user, error in
//            if let error = error {
//                print("사용자 정보 가져오기 에러: \(error.localizedDescription)")
//            } else {
//                print("사용자 정보 가져오기 성공")
//                // 사용자 정보를 가져와서 변수에 저장합니다.
//                self.currentUser?.name = user?.kakaoAccount?.name ?? ""
//                self.currentUser?.email = user?.kakaoAccount?.email ?? ""
//                self.currentUser?.username = user?.kakaoAccount?.profile?.nickname ?? ""
//            }
//        }
//    }
    
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
    
    func kakaoLogout() {
        UserApi.shared.logout { error in
            if let error = error {
                print("로그아웃 에러: \(error.localizedDescription)")
            } else {
                print("로그아웃 성공")
                self.oauthTokenUser = nil
            }
        }
    }
}
