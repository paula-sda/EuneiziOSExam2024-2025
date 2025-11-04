//
//  TriviaGameViewController.swift
//  Trivia
//
//  Created by Marta Rodriguez on 11/11/24.
//

import UIKit

class TriviaGameViewController: UIViewController {
    let TRIVIA_RESULT_SEGUE = "ShowTriviaResultSegue"
    var respuestaSeleccionada: Int? = nil
  
    
    @IBOutlet weak var pregunta: UILabel!
    @IBOutlet weak var respuesta1: UIButton!
    @IBOutlet weak var respuesta2: UIButton!
    @IBOutlet weak var respuesta3: UIButton!
    @IBOutlet weak var respuesta4: UIButton!
    
    @IBAction func seleccionar1(_ sender: UIButton) {
        respuestaSeleccionada = 0
        comprobarRespuesta()
    }
    @IBAction func seleccionar2(_ sender: UIButton) {
        respuestaSeleccionada = 1
        comprobarRespuesta()
    }
    @IBAction func seleccionar3(_ sender: UIButton) {
        respuestaSeleccionada = 2
        comprobarRespuesta()
    }
    @IBAction func seleccionar4(_ sender: UIButton) {
        respuestaSeleccionada = 3
        comprobarRespuesta()
    }
    
    
    
    let triviaGame = TriviaGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Trivia"
        
        mostrarPreguntaActual()
        
    }
    
    func mostrarPreguntaActual() {
            if let preguntaActual = triviaGame.getCurrentQuestion() {
                pregunta.text = preguntaActual.question
                respuesta1.setTitle(preguntaActual.answers[0], for: .normal)
                respuesta2.setTitle(preguntaActual.answers[1], for: .normal)
                respuesta3.setTitle(preguntaActual.answers[2], for: .normal)
                respuesta4.setTitle(preguntaActual.answers[3], for: .normal)
            } else {
                // No hay más preguntas -> ir a la pantalla de resultados
                performSegue(withIdentifier: TRIVIA_RESULT_SEGUE, sender: nil)
            }
        }
    
    func comprobarRespuesta() {
           guard let seleccion = respuestaSeleccionada else { return }
           
           // Usamos la función del modelo para validar y sumar
           triviaGame.answerQuestion(selectedAnswer: seleccion)
           
           // Limpiamos la variable para la siguiente pregunta
           respuestaSeleccionada = nil
           
           // Mostramos la siguiente
           mostrarPreguntaActual()
       }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == TRIVIA_RESULT_SEGUE {
            let resultVC = segue.destination as! TriviaResultViewController
            resultVC.triviaGame = triviaGame
            
        }
    }

}
