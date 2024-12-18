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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Trivia"
        

        self.gameBt.setTitle(String(localized: "Play Trivia"), for: .normal)
        self.rankingBt.setTitle(String(localized: "Ranking"), for: .normal)
    }
}

