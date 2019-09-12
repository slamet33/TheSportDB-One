//
//  MatchDataSource.swift
//  TheSportDB-One
//
//  Created by Qiarra on 30/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

final class MatchDataSource: NSObject {
    var items: [Events] = []
}

extension MatchDataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        let cell: MatchCell = collectionView.dequeueReusableCell(withReuseIdentifier: "matchCell", for: indexPath as IndexPath) as! MatchCell
        cell.display(data: item)
        return cell
    }
}
