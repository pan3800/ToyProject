//
//  User.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/13.
//

import Foundation

struct User: Codable {
    let id: String
    let email: String
    var username: String
    var name: String
    var bie: String?
    var profileImageUrl: String?
    
}
