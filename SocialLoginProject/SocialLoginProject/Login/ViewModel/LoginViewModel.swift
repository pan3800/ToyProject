//
//  LoginViewModel.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/15.
//

import Foundation

class LoginViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signin() async {
        await AuthManager.shared.signIn(email: email, password: password)
    }
}
