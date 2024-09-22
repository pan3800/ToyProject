//
//  MyPayload.swift
//  CafeMap
//
//  Created by 임채성 on 2024/09/22.
//

import Foundation
import CryptoKit
import JWTKit


struct MyPayload: JWTPayload {
    let sub: String
    let exp: ExpirationClaim
        
    func verify(using signer: JWTSigner) throws {
        try self.exp.verifyNotExpired()
    }
}
