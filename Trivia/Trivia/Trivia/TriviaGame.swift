//
//  TriviaGame.swift
//  Trivia
//
//  Created by Marta Rodriguez on 11/11/24.
//

import Foundation

class TriviaGame {
    var questions: [TriviaQuestion] = []
    var currentQuestionIndex: Int = 0
    var score: Int = 0
    
    init() {
        loadQuestions()
    }
    
    func loadQuestions() {
        questions = [
            TriviaQuestion(question: "What year was EUNEIZ University founded?", answers: ["2018", "2020", "2021", "2022"], correctAnswer: 2),
            TriviaQuestion(question: "In which city is EUNEIZ University located?", answers: ["Madrid", "Bilbao", "Vitoria-Gasteiz", "Barcelona"], correctAnswer: 2),
            TriviaQuestion(question: "Which faculty is known for health sciences at EUNEIZ?", answers: ["Faculty of Technology", "Faculty of Music", "Faculty of Health Sciences", "Faculty of Arts"], correctAnswer: 2),
            TriviaQuestion(question: "What does EUNEIZ stand for?", answers: ["European University of Innovation in Sports", "European University of New Technologies", "European University of Neuroscience and Innovation", "European University of Applied Sciences"], correctAnswer: 0),
            TriviaQuestion(question: "Which degree is NOT offered at EUNEIZ?", answers: ["Physiotherapy", "Sound Engineering", "Aerospace Engineering", "Video Game Design"], correctAnswer: 2),
            TriviaQuestion(question: "What is the main focus of EUNEIZ University?", answers: ["Health, Sports, and Creative Technologies", "Law and Political Sciences", "Business and Economics", "History and Literature"], correctAnswer: 0),
            TriviaQuestion(question: "Which sport is emphasized at EUNEIZ University?", answers: ["Basketball", "Football", "Cycling", "All of the above"], correctAnswer: 3),
            TriviaQuestion(question: "What kind of learning approach does EUNEIZ promote?", answers: ["Theoretical", "Practical and innovative", "Distance learning", "Lecture-based"], correctAnswer: 1),
            TriviaQuestion(question: "Which country is EUNEIZ University located in?", answers: ["Portugal", "Spain", "France", "Italy"], correctAnswer: 1),
            TriviaQuestion(question: "What is one of the unique features of EUNEIZ University?", answers: ["Focus on creative industries", "Large campus", "Emphasis on agriculture", "Focus on traditional subjects"], correctAnswer: 0)
        ]
    }
    
    func answerQuestion(selectedAnswer: Int) {
        if selectedAnswer == questions[currentQuestionIndex].correctAnswer {
            score += 1
        }
        currentQuestionIndex += 1
    }
    
    func getCurrentQuestion() -> TriviaQuestion? {
        return currentQuestionIndex < questions.count ? questions[currentQuestionIndex] : nil
    }
    
    func getFinalScore() -> Int {
        return score
    }
    
    func resetGame() {
        currentQuestionIndex = 0
        score = 0
    }
}
