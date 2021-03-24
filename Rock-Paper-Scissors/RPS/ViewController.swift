//
//  ViewController.swift
//  RPS
//
//  Created by 이주원 on 2020/12/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appSignButton: UILabel!
    
    @IBOutlet weak var statusOfGame: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gameStart()
    }
    
    func gameStart() {
        statusOfGame.text=GameState.start.description
        appSignButton.text="🤖"
        playAgainButton.isHidden = true
        rockButton.isHidden = false
        paperButton.isHidden = false
        scissorsButton.isHidden = false
        rockButton.isEnabled = true
        paperButton.isEnabled = true
        scissorsButton.isEnabled = true
        self.view.backgroundColor=UIColor.gray
    }
    
    func play(user : Sign ) {
        self.view.backgroundColor=UIColor.yellow
        let appSign = randomSign()
        appSignButton.text = appSign.emoji
        statusOfGame.text=appSign.match(opponent: user).description
        switch user {
        case .rock:
            rockButton.isEnabled = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            paperButton.isEnabled = false
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isEnabled = false
        
        }
        playAgainButton.isHidden = false
    }
    
    @IBAction func playRock(_ sender: Any) {
        play(user: .rock)
    }
    
    @IBAction func playPaper(_ sender: Any) {
        play(user: .paper)
    }
    
    @IBAction func playScissors(_ sender: Any) {
        play(user: .scissors)
    }
    
    @IBAction func playAgain(_ sender: Any) {
        gameStart()
    }
    

}

