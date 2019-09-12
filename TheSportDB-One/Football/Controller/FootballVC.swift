//
//  ViewController.swift
//  TheSportDB-One
//
//  Created by Qiarra on 23/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

final class FootballVC: UIViewController {
    
    var footballModel = FootballModel()
    lazy var footballV: FootballInput = { return view as! FootballInput}()
    let idLeague: String? = "4328"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        footballV.leagueDataSource = FootballTableDataSource()
        footballV.matchDataSource = MatchDataSource()
        footballV.teamDataSource = TeamDataSource()
        
//        DispatchQueue.global().async {
            self.footballModel.configSession()
            self.footballModel.loadDataLeague() { (data) in
                self.footballV.displayLeague(data)
            }
            self.footballModel.loadDataMatch(idLeague: self.idLeague!) { (data) in
                self.footballV.displayMatch(data)
            }
            self.footballModel.loadDataTeam(idLeague: self.idLeague!) { (data) in
                self.footballV.displayTeam(data)
            }
//        }
    }
}

extension FootballVC: SportModelOutput {
    
    func modelDidLoad(dataLeague: [League], dataMatch: [Events], dataTeam: [Teams]) {
        footballV.displayMatch(dataMatch)
        footballV.displayTeam(dataTeam)
//        footballV.displayLeague(dataLeague)
    }

    func modelDidFail(_ error: Error) {
        print(error)
    }
}

