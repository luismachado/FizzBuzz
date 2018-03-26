//
//  BrainTests_Nimble.swift
//  FizzBuzzTests
//
//  Created by Luís Machado on 12/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import Quick
import Nimble
@testable import FizzBuzz

class BrainTestsNimble: QuickSpec {

    let brain = Brain()

    override func spec() {
        describe("Brain Tests") {
            it("testIsDivisibleByThree") {
                expect(self.brain.isDivisibleBy(divisor: 3, number: 3)).to(beTrue())
            }

            it("testIsNotDivisibleByThree") {
                expect(self.brain.isDivisibleBy(divisor: 3, number: 1)).to(beFalse())
            }

            it("testIsDivisibleByFive") {
                expect(self.brain.isDivisibleBy(divisor: 5, number: 5)).to(beTrue())
            }

            it("testIsNotDivisibleByFive") {
                expect(self.brain.isDivisibleBy(divisor: 5, number: 1)).to(beFalse())
            }

            it("testIsDivisibleByFifteen") {
                expect(self.brain.isDivisibleBy(divisor: 15, number: 15)).to(beTrue())
            }

            it("testIsNotDivisibleByFifteen") {
                expect(self.brain.isDivisibleBy(divisor: 15, number: 1)).to(beFalse())
            }

            it("testSayFizz") {
                expect(self.brain.check(number: 3)).to(equal(Move.fizz))
            }

            it("testSayBuzz") {
                expect(self.brain.check(number: 5)).to(equal(Move.buzz))
            }

            it("testSayFizzBuzz") {
                expect(self.brain.check(number: 15)).to(equal(Move.fizzBuzz))
            }

            it("testSayNumber") {
                expect(self.brain.check(number: 1)).to(equal(Move.number))
            }
        }
    }
}
