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
        _ = game.play(move: .number)
        XCTAssertTrue(game.score == 1)
    }

    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        _ = game.play(move: .number)
        _ = game.play(move: .fizz)
        XCTAssertTrue(game.score == 3)
    }

    func testIfFizzMoveIsRight() {
        game.score = 2
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfFizzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfBuzzMoveIsRight() {
        game.score = 4
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfNumberMoveIsRight() {
        game.score = 1
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfNumberMoveIsWrong() {
        game.score = 2
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }

    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.right)
    }

    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.score)
    }
}
