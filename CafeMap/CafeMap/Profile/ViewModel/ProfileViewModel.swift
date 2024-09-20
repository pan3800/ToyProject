//
//  ProfileViewModel.swift
//  CafeMap
//
//  Created by 임채성 on 2024/09/08.
//

import Foundation
import KakaoSDKUser
import KakaoSDKAuth
import SwiftUI


class ProfileViewModel : ObservableObject{
    @Published var email: String? = nil
    @Published var nickname: String? = nil
    @Published var profileImage: Image? = nil
    @Published var errorMessage: String? = nil
    
    init() {
        fetchUserData()
    }
    
    func fetchUserData() {
        UserApi.shared.me { [weak self] (kakaoUser, error) in
            if let error = error {
                self?.errorMessage = "Error: \(error.localizedDescription)"
            } else {
                self?.email = kakaoUser?.kakaoAccount?.email
                self?.nickname = kakaoUser?.kakaoAccount?.profile?.nickname
                if let imageUrl = kakaoUser?.kakaoAccount?.profile?.profileImageUrl {
                    self?.downloadImage(from: imageUrl)
                }
            }
        }
    }
    
    func downloadImage(from url: URL) {
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            if let data = data, let uiImage = UIImage(data: data) {
                DispatchQueue.main.async {
                    self?.profileImage = Image(uiImage: uiImage) // Convert UIImage to SwiftUI Image
                }
            } else if let error = error {
                DispatchQueue.main.async {
                    self?.errorMessage = "Failed to load image: \(error.localizedDescription)"
                }
            }
        }.resume()
    }
    
}
