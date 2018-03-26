//
//  ViewControllerUnitTestsNimble.swift
//  FizzBuzzTests
//
//  Created by Luís Machado on 14/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import Quick
import Nimble
@testable import FizzBuzz

class ViewControllerUnitTestsNimble: QuickSpec {

    var viewController: ViewController!

    // swiftlint:disable:next function_body_length
    override func spec() {
        describe("View Controller Tests") {

            beforeEach {
                let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
                // swiftlint:disable:next force_cast line_length
                self.viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                UIApplication.shared.keyWindow!.rootViewController = self.viewController

                _ = self.viewController.view
            }

            it("testHasAGame") {
                expect(self.viewController.game).toNot(beNil())
            }

            it("testHasntGame") {
                self.viewController.game = nil
                self.viewController.gameScore = 0
                self.viewController.play(move: .number)
                expect(self.viewController.gameScore).to(equal(-1))
            }

            it("testMove1IncrementsScore") {
                self.viewController.play(move: .number)
                let newScore = self.viewController.gameScore
                expect(newScore).to(equal(1))
            }

            it("testMove2IncrementsScore") {
                self.viewController.play(move: .number)
                self.viewController.play(move: .number)
                let newScore = self.viewController.gameScore
                expect(newScore).to(equal(2))
            }

            it("testFizzIncrementScore") {
                self.viewController.game?.score = 2
                self.viewController.play(move: .fizz)
                let newScore = self.viewController.gameScore
                expect(newScore).to(equal(3))
            }

            it("testBuzzIncrementScore") {
                self.viewController.game?.score = 4
                self.viewController.play(move: .buzz)
                let newScore = self.viewController.gameScore
                expect(newScore).to(equal(5))
            }

            it("testFizzBuzzIncrementScore") {
                self.viewController.game?.score = 14
                self.viewController.play(move: .fizzBuzz)
                let newScore = self.viewController.gameScore
                expect(newScore).to(equal(15))
            }

            it("testFizzNotIncrementScore") {
                self.viewController.game?.score = 1
                self.viewController.play(move: .fizz)
                let newScore = self.viewController.gameScore
                expect(newScore).to(equal(1))
            }
        }
    }
}
