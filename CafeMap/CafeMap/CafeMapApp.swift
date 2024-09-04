//
//  CafeMapApp.swift
//  CafeMap
//
//  Created by 임채성 on 2024/08/27.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        if (AuthApi.isKakaoTalkLoginUrl(url)) {
            return AuthController.handleOpenUrl(url: url)
        }

        return false
    }
    
}

@main
struct CafeMapApp: App {
    
    init() {
        // Kakao SDK 초기화
        KakaoSDK.initSDK(appKey: "c3fea0a1a66c61eefd84ef5c7a2a4f18")
    }
    
    var body: some Scene {
        WindowGroup {
            // onOpenURL()을 사용해 커스텀 URL 스킴 처리
            ContentView().onOpenURL(perform: { url in
                if (AuthApi.isKakaoTalkLoginUrl(url)) {
                    AuthController.handleOpenUrl(url: url)
                }
            })
        }
    }
}
