//
//  HomeScreenTest.swift
//  LoginDemoRxReduxUITests
//
//  Created by Mahesh Chandrashekar on 19/12/21.
//  Copyright © 2021 Mounir Dellagi. All rights reserved.
//

import XCTest

class HomeScreenTest: BaseUITests {
    let loginScreen = LoginScreen()
    let homeScreen = HomeScreen()
    let username = TestData.LoginDetails.username
    let password = TestData.LoginDetails.password
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testScreenTitle() {
        loginScreen.validLogin(username: username, password: password)
        homeScreen.checkScreenTitle()
    }
    
    func testRefreshButton() {
        loginScreen.validLogin(username: username, password: password)
        homeScreen.tapOnRefreshButton()
    }
    
}
