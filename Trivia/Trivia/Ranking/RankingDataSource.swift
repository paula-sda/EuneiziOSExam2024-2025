//
//  RankingDataSource.swift
//  Trivia
//
//  Created by Marta Rodriguez on 11/11/24.
//

import Foundation
import RealmSwift

class RankingDataSource {
    
    static func getRanking() -> [ScoreEntry] {
        let realm = try! Realm()
        let results = realm.objects(ScoreEntry.self).sorted(byKeyPath: "score", ascending: false)
        return Array(results)
    }
    
    static func saveScore(name: String, score: Int) {
        let realm = try! Realm()
        let scoreEntry = ScoreEntry()
        scoreEntry.name = name
        scoreEntry.score = score
        try! realm.write {
            realm.add(scoreEntry)
        }
    }
}
