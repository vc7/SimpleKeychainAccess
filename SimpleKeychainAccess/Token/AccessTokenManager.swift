//
//  AccessTokenManager.swift
//  SimpleKeychainAccess
//
//  Created by vincent on 2016/10/28.
//  Copyright © 2016年 vc7. All rights reserved.
//

import Foundation

class AccessTokenManager: TokenManageable {
    
    static let `default` = AccessTokenManager()
    
    private init() {
    }
    
    var key: String {
        return "ska.accessToken"
    }
}
