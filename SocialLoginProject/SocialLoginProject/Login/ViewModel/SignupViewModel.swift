//
//  SignupViewModel.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/13.
//

import Foundation
import FirebaseAuth

class SignupViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var name = ""
    @Published var username = ""
    
    func createUser() async {
        await AuthManager.shared.createUser(email: email, password: password, name: name, username: username)
        email = ""
        password = ""
        name = ""
        username = ""
    }
    
}

