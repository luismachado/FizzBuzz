//
//  Game.swift
//  FizzBuzz
//
//  Created by Luís Machado on 09/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import Foundation

class Game {

    var brain: Brain
    var score: Int

    init() {
        self.score = 0
        self.brain = Brain()
    }

    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)

        if result == move {
            score += 1
        }

        return (result == move, score)
    }
}
