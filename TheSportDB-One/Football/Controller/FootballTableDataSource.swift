//
//  FootballTableDataSource.swift
//  TheSportDB-One
//
//  Created by Qiarra on 25/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

final class FootballTableDataSource: NSObject {
    var items: [Countrys] = []
    var footballModel: FootballModel?
}

extension FootballTableDataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        let cell: LeagueCell = collectionView.dequeueReusableCell(withReuseIdentifier: "leagueCell", for: indexPath as IndexPath) as! LeagueCell
        cell.lblNameLeague.text = item.strLeague
        return cell
    }
}

extension FootballTableDataSource: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        footballModel?.loadDataTeam(idLeague: item.idLeague!){ (output) in
            
        }
        footballModel?.loadDataMatch(idLeague: item.idLeague!){ (output) in
            
        }
    }
}
