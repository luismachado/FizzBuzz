//
//  GameTestsNimble.swift
//  FizzBuzzTests
//
//  Created by Luís Machado on 12/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import Quick
import Nimble
@testable import FizzBuzz

class GameTestsNimble: QuickSpec {

    let game = Game()

    // swiftlint:disable:next function_body_length
    override func spec() {
        describe("Game Tests") {

            beforeEach {
                self.game.score = 0
            }

            it("testGameStartsAtZero") {
                expect(self.game.score).to(equal(0))
            }

            it("testOnPlayScoreIncremented") {
                _ = self.game.play(move: .number)
                expect(self.game.score).to(equal(1))
            }

            it("testOnPlayTwiceScoreIncremented") {
                self.game.score = 1
                _ = self.game.play(move: .number)
                _ = self.game.play(move: .fizz)
                expect(self.game.score).to(equal(3))
            }

            it("testIfFizzMoveIsRight") {
                self.game.score = 2
                let response = self.game.play(move: .fizz)
                let result = response.right
                expect(result).to(beTrue())
            }

            it("testIfFizzMoveIsWrong") {
                self.game.score = 1
                let response = self.game.play(move: .fizz)
                let result = response.right
                expect(result).to(beFalse())
            }

            it("testIfBuzzMoveIsRight") {
                self.game.score = 4
                let response = self.game.play(move: .buzz)
                let result = response.right
                expect(result).to(beTrue())
            }

            it("testIfBuzzMoveIsWrong") {
                self.game.score = 1
                let response = self.game.play(move: .buzz)
                let result = response.right
                expect(result).to(beFalse())
            }

            it("testIFizzfBuzzMoveIsRight") {
                self.game.score = 14
                let response = self.game.play(move: .fizzBuzz)
                let result = response.right
                expect(result).to(beTrue())
            }

            it("testIfFizzBuzzMoveIsWrong") {
                self.game.score = 1
                let response = self.game.play(move: .fizzBuzz)
                let result = response.right
                expect(result).to(beFalse())
            }

            it("testIfNumberMoveIsRight") {
                self.game.score = 1
                let response = self.game.play(move: .number)
                let result = response.right
                expect(result).to(beTrue())
            }

            it("testIfNumberMoveIsWrong") {
                self.game.score = 2
                let response = self.game.play(move: .number)
                let result = response.right
                expect(result).to(beFalse())
            }

            it("testIfMoveWrongScoreNotIncremented") {
                self.game.score = 1
                _ = self.game.play(move: .fizz)
                expect(self.game.score).to(equal(1))
            }

            it("testPlayShouldReturnIfMoveRight") {
                self.game.score = 1
                let response = self.game.play(move: .number)
                expect(response.right).toNot(beNil())
            }

            it("testPlayShouldReturnNewScore") {
                self.game.score = 1
                let response = self.game.play(move: .number)
                expect(response.score).toNot(beNil())
            }
        }
    }
}
