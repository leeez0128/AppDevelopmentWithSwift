//
//  Game.swift
//  ApplePie
//
//  Created by 이주원 on 2021/01/09.
//

import Foundation

struct Game {
    var word : String
    var incorrectMovesRemaining : Int
    var guessLetters : [Character]
    
    var formattedWord : String {
        var guessedWord = ""
        for letter in word {
            if guessLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGussed(letter : Character)  {
        guessLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
        
    }
}
