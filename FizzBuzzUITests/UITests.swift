//
//  UITests.swift
//  FizzBuzzUITests
//
//  Created by Luís Machado on 08/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import XCTest

class UITests: XCTestCase {

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testExample() {
    }
}
