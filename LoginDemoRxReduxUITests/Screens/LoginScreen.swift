//
//  LoginScreen.swift
//  LoginDemoRxReduxUITests
//
//  Created by Mahesh Chandrashekar on 19/12/21.
//  Copyright © 2021 Mounir Dellagi. All rights reserved.
//

import XCTest

class LoginScreen: CommonUtility {
    let userNameTestField = app.textFields[AccessibilityIdentifiers.LoginScreen.userName].firstMatch
    let passWordTestField = app.secureTextFields[AccessibilityIdentifiers.LoginScreen.passWord].firstMatch
    let loginButton = app.buttons[AccessibilityIdentifiers.LoginScreen.login].firstMatch
    let okButton = app.buttons[AccessibilityIdentifiers.LoginScreen.ok].firstMatch
    let registerButton = app.buttons[AccessibilityIdentifiers.LoginScreen.register].firstMatch
    let errorMessage = app.staticTexts[AccessibilityIdentifiers.LoginScreen.errorMessage].firstMatch
    
    func tapOnUsername(username: String) {
        tapOn(userNameTestField, action: .hittable, description: "\(userNameTestField)")
        userNameTestField.typeText(username)
    }
    
    func tapOnPassword(password: String) {
        tapOn(passWordTestField, action: .hittable, description: "\(passWordTestField)")
        passWordTestField.typeText(password)
    }
    
    func tapOnLogin() {
        tapOn(loginButton, action: .hittable, description: "\(loginButton)")
    }
    
    func validLogin(username: String, password: String) {
        tapOn(userNameTestField, action: .hittable, description: "\(userNameTestField)")
        userNameTestField.typeText(username)
        tapOn(passWordTestField, action: .hittable, description: "\(passWordTestField)")
        passWordTestField.typeText(password)
        tapOn(loginButton, action: .hittable, description: "\(loginButton)")
    }
    
    func invalidLogin(username: String, password: String) {
        tapOn(userNameTestField, action: .hittable, description: "\(userNameTestField)")
        userNameTestField.typeText(username)
        tapOn(passWordTestField, action: .hittable, description: "\(passWordTestField)")
        passWordTestField.typeText(password)
        tapOn(loginButton, action: .hittable, description: "\(loginButton)")
        checkForElement(errorMessage, action: .exists, description: "\(errorMessage)")
        tapOn(okButton, action: .hittable, description: "\(okButton)")
    }
    
    func tapOnRegister() {
        tapOn(registerButton, action: .hittable, description: "\(registerButton)")
    }
}
