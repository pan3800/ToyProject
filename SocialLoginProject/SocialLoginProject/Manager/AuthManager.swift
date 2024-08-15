//
//  AuthManager.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/13.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseFirestore

class AuthManager: ObservableObject {
    
    static let shared = AuthManager()
    
    @Published var currentAuthUser: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        currentAuthUser = Auth.auth().currentUser
//        Task {
//            await loadUserData()
//        }
    }
    
    func createUser(email: String, password: String, name: String, username: String) async {
        print("email:", email)
        print("password:", password)
        print("name:", name)
        print("username:", username)
        
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            currentAuthUser = result.user
            guard let userId = currentAuthUser?.uid else { return }
            await uploadUserData(userId: userId, email: email, username: username, name: name)
        } catch {
            print("DEBUG: Faild to create user with error \(error.localizedDescription)")
        }
    }
    
    func uploadUserData(userId: String, email: String, username: String, name: String) async {
        let user = User(id: userId, email: email, username: username, name: name)
        self.currentUser = user
        do {
            let encodedUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
        } catch {
            print("DEBUG: Faild to upload user data with error \(error.localizedDescription)")
        }
    }
    
    func signIn(email: String, password: String) async {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            currentAuthUser = result.user
            await loadUserData()
        } catch {
            print("DEBUG: Faild to log in with error \(error.localizedDescription)")
        }
    }
    
    func loadUserData() async {
         guard let userId = self.currentAuthUser?.uid else { return }
         do {
             self.currentUser = try await Firestore.firestore().collection("users").document(userId).getDocument(as: User.self)
             print("currentUser:", currentUser)
         } catch {
             print("DEBUG: Faild to load user data with error \(error.localizedDescription)")
         }
     }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            currentAuthUser = nil
        } catch {
            print("DEBUG: Faild to sign out with error \(error.localizedDescription)")
        }
    }
}
