//
//  AuthManager.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/13.
//

import Foundation
import FirebaseAuth
import Firebase

class AuthManager: ObservableObject {
    
    static let shared = AuthManager()
    
    @Published var currentAuthUser: FirebaseAuth.User?
    @Published var currentUser: User?
    
    func createUser(email: String, password: String, name: String, username: String) async {
        print("email:", email)
        print("password:", password)
        print("name:", name)
        print("username:", username)
        
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            currentAuthUser = result.user
        } catch {
            print("DEBUG: Faild to create user with error \(error.localizedDescription)")
        }
    }
}
