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
    var gameScore: Int? {
        didSet {
            if let gameScore = self.gameScore {
                numberButton.setTitle("\(gameScore)", for: .normal)
            }
        }
    }

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()

        if let game = self.game {
            gameScore = game.score
        }
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            gameScore = -1
            return
        }

        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender == numberButton {
            play(move: .number)
        } else if sender == fizzButton {
            play(move: .fizz)
        } else if sender == buzzButton {
            play(move: .buzz)
        } else {
            play(move: .fizzBuzz)
        }
    }
}
