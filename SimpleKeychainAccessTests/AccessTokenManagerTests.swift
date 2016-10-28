//
//  AccessTokenManagerTests.swift
//  SimpleKeychainAccess
//
//  Created by vincent on 2016/10/28.
//  Copyright © 2016年 vc7. All rights reserved.
//

import XCTest

class AccessTokenManagerTests: XCTestCase {
    
    let accessTokenManager = AccessTokenManager.default
    
    override func setUp() {
        super.setUp()
        accessTokenManager.reset()
    }
    
    override func tearDown() {
        accessTokenManager.reset()
        super.tearDown()
    }
    
    func testKeyName() {
        XCTAssertEqual(accessTokenManager.key, "ska.accessToken")
    }
    
    func testAddToken() {
        let token = "token"
        accessTokenManager.update(token: token)
        
        XCTAssertEqual(accessTokenManager.token, token)
    }
    
    func testClearToken() {
        let token = "token"
        accessTokenManager.update(token: token)
        
        XCTAssertEqual(accessTokenManager.token, token)
        
        accessTokenManager.reset()
        
        XCTAssertNil(accessTokenManager.token)
    }
    
    func testUpdateToken() {
        let token = "token"
        let newToken = "newToken"
        
        accessTokenManager.update(token: token)
        
        XCTAssertEqual(accessTokenManager.token, token)
        
        accessTokenManager.update(token: newToken)
        
        XCTAssertEqual(accessTokenManager.token, newToken)
    }
}
