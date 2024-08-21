//
//  SocialLoginProjectApp.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/08.
//

import SwiftUI
import FirebaseCore
import KakaoSDKCommon
import KakaoSDKAuth

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct SocialLoginProjectApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init () {
        KakaoSDK.initSDK(appKey: "e75007a20d23746c9b83ae70aa6399d1")
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .onOpenURL { url in
                        if (AuthApi.isKakaoTalkLoginUrl(url)) {
                            //print("카카오톡 화면 호출 완료")
                            _ = AuthController.handleOpenUrl(url: url)
                        }
                    }
            }
        }
    }
}
