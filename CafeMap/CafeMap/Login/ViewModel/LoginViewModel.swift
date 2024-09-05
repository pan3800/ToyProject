//
//  LoginViewModel.swift
//  CafeMap
//
//  Created by 임채성 on 2024/09/05.
//

import Foundation

class LoginViewModel : ObservableObject {
    
    func kakaoLogin() async {
        await AuthManager.shared.kakaoLogin()
    }
}
