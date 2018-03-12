//
//  FizzBuzzUITests.swift
//  FizzBuzzUITests
//
//  Created by Luís Machado on 09/03/2018. Teste
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import XCTest

class FizzBuzzUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]

        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }

    func testTapNumberButtonTwiceIncrementsTo2() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]

        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }

    func testTapFizzButtonIncrementsTo3() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]

        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }

    func testTapBuzzButtonIncrementsTo5() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]

        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }

    func playTo14() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]

        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }

    func testTapFizzBuzzButtonIncrementsTo15() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzbuzzButton = app.buttons["fizzBuzzButton"]

        playTo14()

        fizzbuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
}
