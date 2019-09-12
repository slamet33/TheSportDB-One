//
//  FootballView.swift
//  TheSportDB-One
//
//  Created by Qiarra on 23/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

protocol FootballInput {
    func displayLeague(_ data: [Countrys])
    func displayMatch(_ data: [Events])
    func displayTeam(_ data: [Teams])
    var leagueDataSource: FootballTableDataSource! {get set}
    var matchDataSource: MatchDataSource! {get set}
    var teamDataSource: TeamDataSource! {get set}
}

class FootballView: UIView {
    
    @IBOutlet weak var leagueCollectionView: UICollectionView!
    @IBOutlet weak var matchCollectionView: UICollectionView!
    @IBOutlet weak var teamCollectionView: UICollectionView!
    
    var leagueDataSource: FootballTableDataSource! {
        didSet {
            leagueCollectionView.dataSource = leagueDataSource
            leagueCollectionView.delegate = leagueDataSource
        }
    }
    
    var matchDataSource: MatchDataSource! {
        didSet {
            matchCollectionView.dataSource = matchDataSource
        }
    }
    
    var teamDataSource: TeamDataSource! {
        didSet {
            teamCollectionView.dataSource = teamDataSource
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        matchCollectionView.delegate = self
        teamCollectionView.delegate = self
        
        matchCollectionView.register(UINib(nibName: "MatchFootballCell", bundle: nil), forCellWithReuseIdentifier: MatchCell.reuseIdentifier)
        teamCollectionView.register(UINib(nibName: "TeamCell", bundle: nil), forCellWithReuseIdentifier: TeamCell.reuseIdentifier)
    }
}

extension FootballView: UICollectionViewDelegate {
    
}

extension FootballView: FootballInput {
    
    func displayLeague(_ data: [Countrys]) {
        leagueDataSource.items = data
        leagueCollectionView.reloadData()
    }
    
    func displayMatch(_ data: [Events]) {
        matchDataSource.items = data
        matchCollectionView.reloadData()
    }
    
    func displayTeam(_ data: [Teams]) {
        teamDataSource.items = data
        teamCollectionView.reloadData()
    }
}
