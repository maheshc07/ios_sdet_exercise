//
//  LoginScreenTest.swift
//  LoginDemoRxReduxUITests
//
//  Created by Mahesh Chandrashekar on 19/12/21.
//  Copyright © 2021 Mounir Dellagi. All rights reserved.
//

import XCTest

class LoginScreenTest: BaseUITests {
    let loginScreen = LoginScreen()
    let username = TestData.LoginDetails.username
    let password = TestData.LoginDetails.password
    let invalidUsername = TestData.LoginDetails.usernameInvalid
    let invalidPassword = TestData.LoginDetails.passwordInvalid
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testUserNameTextField() {
        loginScreen.tapOnUsername(username: username)
    }
    
    func testPassWordTextField() {
        loginScreen.tapOnPassword(password: password)
    }
    
    func testLoginButton() {
        loginScreen.tapOnLogin()
    }
    
    func testValidLogin() {
        loginScreen.validLogin(username: username, password: password)
    }
    
    func testInvalidLogin() {
        loginScreen.invalidLogin(username: invalidUsername, password: invalidPassword)
    }
    
    func testRegisterButton() {
        loginScreen.tapOnRegister()
    }
}
