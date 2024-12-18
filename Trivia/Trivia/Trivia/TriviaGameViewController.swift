//
//  TriviaGameViewController.swift
//  Trivia
//
//  Created by Marta Rodriguez on 11/11/24.
//

import UIKit

class TriviaGameViewController: UIViewController {
    let TRIVIA_RESULT_SEGUE = "ShowTriviaResultSegue"
    
    let triviaGame = TriviaGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Trivia"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == TRIVIA_RESULT_SEGUE {
            let resultVC = segue.destination as! TriviaResultViewController
            
        }
    }

}
