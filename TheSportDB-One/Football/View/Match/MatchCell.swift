//
//  MatchCollectionViewCell.swift
//  TheSportDB-One
//
//  Created by Qiarra on 30/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class MatchCell: UICollectionViewCell {
    
    static var reuseIdentifier: String = "matchCell"
    
    @IBOutlet weak var imgTeamHome: UIImageView!
    @IBOutlet weak var nameTeamHome: UILabel!
    @IBOutlet weak var scoreTeamHome: UILabel!
    @IBOutlet weak var imgTeamAway: UIImageView!
    @IBOutlet weak var nameTeamAway: UILabel!
    @IBOutlet weak var scoreTeamAway: UILabel!
    @IBOutlet weak var dateEvent: UILabel!
    
    override func layoutSubviews() {
        layer.cornerRadius = 2
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 0).cgPath
        layer.shadowOpacity = 0.5
    }
    
    func display(data: Events) {
        nameTeamHome.text = data.strHomeTeam
        nameTeamAway.text = data.strAwayTeam
        if data.intAwayScore != nil && data.intHomeScore != nil {
            scoreTeamHome.text = data.intHomeScore
            scoreTeamAway.text = data.intAwayScore
        } else {
            scoreTeamHome.text = ""
            scoreTeamAway.text = ""
        }
        
        dateEvent.text = data.dateEvent
    }
}
