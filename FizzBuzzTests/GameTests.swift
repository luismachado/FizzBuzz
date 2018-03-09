//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Luís Machado on 09/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }

    func testOnPlayScoreIncremented() {
        _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }

    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        _ = game.play(move: "2")
        _ = game.play(move: "Fizz")
        XCTAssertTrue(game.score == 3)
    }

    func testIfFizzMoveIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }

    func testIfFizzMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, false)
    }

    func testIfBuzzMoveIsRight() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, true)
    }

    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, false)
    }

    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, true)
    }

    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, false)
    }

    func testIfNumberMoveIsRight() {
        game.score = 1
        let result = game.play(move: "2")
        XCTAssertEqual(result, true)
    }

    func testIfNumberMoveIsWrong() {
        game.score = 2
        let result = game.play(move: "3")
        XCTAssertEqual(result, false)
    }

    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
}
