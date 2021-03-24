//
//  GameState.swift
//  RPS
//
//  Created by 이주원 on 2020/12/28.
//

import Foundation
enum GameState {
    case start, win, lose, draw

    var description : String {
        switch self {
        case .start :
            return "Rock, Paper, Scissors?"
        case .win :
            return "You Lose!"
        case .lose :
            return "You Won!"
        case .draw :
            return "Draw"
        }
    }
}
