//
//  RankingViewController.swift
//  Trivia
//
//  Created by Student on 4/11/25.
//

import UIKit

class RankingViewController: UIViewController {

    
    private var ranking: [ScoreEntry] = []
    @IBOutlet weak var tablaRanking: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablaRanking.dataSource = self
        tablaRanking.delegate = self
        
        ranking = RankingDataSource.getRanking()
        tablaRanking.reloadData()
        
    }
}
    
    extension RankingViewController: UITableViewDataSource, UITableViewDelegate {
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return ranking.count
        }
        
     
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let celda = tableView.dequeueReusableCell(withIdentifier: "rankingCelda", for: indexPath)
            let rank = ranking[indexPath.row]
            celda.textLabel?.text = "Name: \(rank.name)  Score: \(rank.score)"
            return celda
        }
        
        
    }
    
