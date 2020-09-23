//
//  Sign.swift
//  Rock, Paper, Scissors
//
//  Created by Alexander Rozhdestvenskiy on 04.08.2020.
//  Copyright © 2020 evilroot. All rights reserved.
//

import Foundation

enum Sign {
    case rock
    case paper
    case scissors
}

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

func comparison(player: Sign, computer: Sign) -> GameState {
    if player == .rock && computer == .paper {
        return .lose
    } else if player == .rock && computer == .rock {
        return .draw
    } else if player == .rock && computer == .scissors {
        return .win
    } else if player == .paper && computer == .paper {
        return .draw
    } else if player == .paper && computer == .rock {
        return .win
    } else if player == .paper && computer == .scissors {
        return .lose
    } else if player == .scissors && computer == .paper {
        return .win
    } else if player == .scissors && computer == .rock {
        return .lose
    } else {
        return .draw
    }
}
