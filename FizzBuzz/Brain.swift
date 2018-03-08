//
//  Brain.swift
//  FizzBuzz
//
//  Created by Luís Machado on 07/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import Foundation

class Brain {

    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }

    func check(number: Int) -> String {
        if isDivisibleBy(divisor: 15, number: number) {
            return "FizzBuzz"
        } else if isDivisibleBy(divisor: 3, number: number) {
            return "Fizz"
        } else if isDivisibleBy(divisor: 5, number: number) {
            return "Buzz"
        }


        return "\(number)"
    }

}
