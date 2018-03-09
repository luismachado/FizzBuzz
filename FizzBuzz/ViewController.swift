//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Luís Machado on 07/03/2018.
//  Copyright © 2018 Luís Machado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game: Game?
    var gameScore: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            gameScore = -1
            return
        }

        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
}
