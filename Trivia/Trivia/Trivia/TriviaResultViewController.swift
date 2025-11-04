//
//  TriviaResultViewController.swift
//  Trivia
//
//  Created by Marta Rodriguez on 11/11/24.
//

import UIKit

class TriviaResultViewController: UIViewController {
    
   

    var triviaGame: TriviaGame? = nil
    
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var finalScoreTitleLabel: UILabel!
    @IBOutlet weak var finalScoreValueLabel: UILabel!
    
  
    @IBOutlet weak var restartBt: UIButton!
    @IBAction func restarbuttonClicked(_ sender: UIButton) {
        print("Juego reiniciado. Puntuación actual: \(triviaGame?.score ?? -1)")
        triviaGame?.resetGame()
        // 2. Imprimir el score en la consola para comprobar
            print("Juego reiniciado. Puntuación actual: \(triviaGame?.score ?? -1)")
            print("Índice de pregunta actual: \(triviaGame?.currentQuestionIndex ?? -1)")
            
            // 3. Volver a la pantalla anterior (TriviaGameViewController)
            navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var nameTitleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveBt: UIButton!
    
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        
        if nameTextField.text!.isEmpty{
            let alert = UIAlertController(title: "Error", message: String(localized: "error"), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
           
            let usuario = nameTextField.text!
            let score = triviaGame?.score ?? 0
            print("Usuario: \(usuario)")
            print("Score: \(score)")
            
                RankingDataSource.saveScore(name: usuario, score: score)
                
                let alerta = UIAlertController(title: "Guardado", message: "Tu puntuación se ha guardado correctamente.", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .default))
                present(alerta, animated: true)
            
    
        }
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Trivia"
                
                self.gameOverLabel.text = String(localized: "Game Over")
                self.finalScoreTitleLabel.text = String(localized: "Your final score is:")
                self.finalScoreValueLabel.text = String(triviaGame?.score ?? 0)
                
                self.nameTitleLabel.text = String(localized: "Enter your name to save your score in the ranking:")
                self.saveBt.setTitle(String(localized: "save"), for: .normal)
                self.restartBt.setTitle(String(localized: "Restart Game"), for: .normal)
                
                self.nameTextField.delegate = self
                // Add gesture recognizer to dismiss keyboard when tapping outside
                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
                view.addGestureRecognizer(tapGesture)
                
                NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
                NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
            }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    

    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardHeight = keyboardFrame.cgRectValue.height
            self.view.frame.origin.y = -keyboardHeight
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        self.view.frame.origin.y = 0
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension TriviaResultViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // Dismiss the keyboard when the return key is pressed
        return true
    }
}
