//
//  BaseUITests.swift
//  LoginDemoRxReduxUITests
//
//  Created by Mahesh Chandrashekar on 19/12/21.
//  Copyright © 2021 Mounir Dellagi. All rights reserved.
//

import XCTest

class BaseUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
       super.tearDown()
        app.terminate()
    }
}
