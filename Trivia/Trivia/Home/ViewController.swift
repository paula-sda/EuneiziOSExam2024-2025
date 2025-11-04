//
//  ViewController.swift
//  Trivia
//
//  Created by Marta Rodriguez on 10/11/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var gameBt: UIButton!
    @IBOutlet weak var rankingBt: UIButton!
    let VerRankingSegue = "showRanking"
    let JugarTriviaSegue = "verTrivia"
    
    
    @IBAction func verRanking(_ sender: UIButton) {
        print("ver pantalla ranking")
        self.performSegue(withIdentifier: VerRankingSegue, sender: self)    }
    
    @IBAction func jugarTrivia(_ sender: UIButton) {
        print("jugar trivia")
        self.performSegue(withIdentifier: JugarTriviaSegue, sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.title = "Trivia"
        

        self.gameBt.setTitle(String(localized: "Play Trivia"), for: .normal)
        self.rankingBt.setTitle(String(localized: "Ranking"), for: .normal)
    }
}

