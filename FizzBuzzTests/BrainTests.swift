//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by Luís Machado on 07/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    let brain = Brain()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testIsDivisibleByThree() {
        let result = brain.isDivisibleBy(divisor: 3, number: 3)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleBy(divisor: 3, number: 1)
        XCTAssertEqual(result, false)
    }

    func testIsDivisibleByFive() {
        let result = brain.isDivisibleBy(divisor: 5, number: 5)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleBy(divisor: 5, number: 1)
        XCTAssertEqual(result, false)
    }

    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleBy(divisor: 15, number: 15)
        XCTAssertEqual(result, true)
    }

    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleBy(divisor: 15, number: 1)
        XCTAssertEqual(result, false)
    }

    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, "Fizz")
    }

    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, "Buzz")
    }

    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, "FizzBuzz")
    }

    func testSayNumber() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, "1")
    }
    
}
