//
//  TokenManageable.swift
//  SimpleKeychainAccess
//
//  Created by vincent on 2016/10/28.
//  Copyright © 2016年 vc7. All rights reserved.
//

import Foundation
import KeychainAccess

protocol TokenManageable {
    /// 識別
    var key: String { get }
    /// 取得 token
    var token: String? { get }
    /// 更新 token
    func update(token: String)
    /// 清除 token
    func reset()
    
}

extension TokenManageable {
    private var keychain: Keychain {
        get {
            return Keychain(service: key)
        }
    }
    
    var token: String? {
        return self.keychain[key]
    }
    
    func update(token: String) {
        self.keychain[key] = token
    }
    
    func reset() {
        self.keychain[key] = nil
    }
}
