//
//  RankingRecord.swift
//  Trivia
//
//  Created by Marta Rodriguez on 11/11/24.
//

import Foundation
import RealmSwift

class ScoreEntry: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var score: Int = 0
}
