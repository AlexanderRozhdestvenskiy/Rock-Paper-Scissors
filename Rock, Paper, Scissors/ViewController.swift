//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Alexander Rozhdestvenskiy on 04.08.2020.
//  Copyright © 2020 evilroot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ImageGame: UILabel!
    @IBOutlet weak var statusGame: UILabel!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var scissor: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var play: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(sos: .start)
        // Do any additional setup after loading the view.
    }

    func updateUI(sos: GameState) {
        if sos == .start {
            ImageGame.text = "🤖"
            play.isHidden = true
            statusGame.text = "Start Game!"
            rock.isHidden = false
            paper.isHidden = false
            scissor.isHidden = false
        } else if sos == .draw {
            statusGame.text = "Draw!"
            play.isHidden = false
        } else if sos == .lose {
            statusGame.text = "You Lose!"
            play.isHidden = false
        } else {
            statusGame.text = "You Win!"
            play.isHidden = false
        }
    }
    
    
    
    
    
    
    
    @IBAction func playerRock(_ sender: UIButton) {
        updateUI(sos: comparison(player: .rock, computer: randomSign()))
        paper.isHidden = true
        scissor.isHidden = true
    }
    
    
    @IBAction func playerScissor(_ sender: UIButton) {
        updateUI(sos: comparison(player: .scissors, computer: randomSign()))
        paper.isHidden = true
        rock.isHidden = true
    }
    
    
    @IBAction func playerPaper(_ sender: UIButton) {
        updateUI(sos: comparison(player: .paper, computer: randomSign()))
        rock.isHidden = true
        scissor.isHidden = true
    }
    
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        updateUI(sos: .start)
    }
    
    
    
    
    
    
}

