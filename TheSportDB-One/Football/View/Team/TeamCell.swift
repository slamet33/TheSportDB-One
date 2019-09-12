//
//  TeamCell.swift
//  TheSportDB-One
//
//  Created by Qiarra on 06/08/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class TeamCell: UICollectionViewCell {
    
    static var reuseIdentifier: String = "teamCell"
    
    @IBOutlet weak var imgTeam: UIImageView!
    @IBOutlet weak var nameTeam: UILabel!
    @IBOutlet weak var cityTeam: UILabel!
    
    
    func display(data: Teams) {
        nameTeam.text = data.strTeam
        cityTeam.text = data.strStadium
        imgTeam.load(data.strTeamBadge)
    }
}


