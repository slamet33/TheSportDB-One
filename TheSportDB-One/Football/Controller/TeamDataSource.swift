//
//  TeamDataSource.swift
//  TheSportDB-One
//
//  Created by Qiarra on 06/08/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class TeamDataSource: NSObject {
    var items: [Teams] = []
}

extension TeamDataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        let cell: TeamCell = collectionView.dequeueReusableCell(withReuseIdentifier: "teamCell", for: indexPath as IndexPath) as! TeamCell
        cell.display(data: item)
        return cell
    }
}
