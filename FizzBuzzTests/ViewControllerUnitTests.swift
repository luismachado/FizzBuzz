//
//  ViewControllerUnitTests.swift
//  FizzBuzzTests
//
//  Created by Luís Machado on 09/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {

    var viewController: ViewController!

    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        // swiftlint:disable:next force_cast
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController

        _ = viewController.view
    }

    override func tearDown() {
        super.tearDown()
    }

    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }

    func testHasntGame() {
        viewController.game = nil
        viewController.gameScore = 0
        viewController.play(move: "1")
        XCTAssertEqual(viewController.gameScore, -1)
    }

    func testMove1IncrementsScore() {
        viewController.play(move: "1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }

    func testMove2IncrementScore() {
        viewController.play(move: "1")
        viewController.play(move: "2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }

    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: "Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }

    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: "Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }

    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: "FizzBuzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }

    func testFizzNotIncrementScore() {
        viewController.game?.score = 1
        viewController.play(move: "Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
}
