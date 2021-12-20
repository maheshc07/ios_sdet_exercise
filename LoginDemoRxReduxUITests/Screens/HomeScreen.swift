//
//  HomeScreen.swift
//  LoginDemoRxReduxUITests
//
//  Created by Mahesh Chandrashekar on 19/12/21.
//  Copyright © 2021 Mounir Dellagi. All rights reserved.
//

import XCTest

class HomeScreen: CommonUtility {
    let lyonelText = app.staticTexts[AccessibilityIdentifiers.HomeScreen.lyonel].firstMatch
    let greyText = app.staticTexts[AccessibilityIdentifiers.HomeScreen.grey].firstMatch
    let xaroText = app.staticTexts[AccessibilityIdentifiers.HomeScreen.xaro].firstMatch
    
    func checkScreenTitle() {
    let headingTitle = app.staticTexts[AccessibilityIdentifiers.HomeScreen.headingTitle].firstMatch
        checkForElement(headingTitle, action: .exists, description: "\(headingTitle)")
    }
    
    func tapOnRefreshButton() {
        let refreshButton = app.buttons[AccessibilityIdentifiers.HomeScreen.refresh].firstMatch
        tapOn(refreshButton, action: .hittable, description: "\(refreshButton)")
        
    }
    
    func checkForTextData() {
        
        
    }
    
}
