//
//  FootballConfigurator.swift
//  TheSportDB-One
//
//  Created by Qiarra on 29/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit
class FootballConfigurator {
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? FootballVC {
            configure(viewcontroller: viewController)
        }
    }
    
    func configureDataSourceForViewInput<UICollectionViewDataSource>(viewInput: UIViewController, dataSource: UICollectionViewDataSource) {
        if let tableDataSource = dataSource as? FootballTableDataSource,
            let viewController = viewInput as? FootballVC {
            configure(viewcontroller: viewController, tableDataSource: tableDataSource)
        }
    }
    
    private func configure(viewcontroller: FootballVC) {
        let model = FootballModel()
        model.output = viewcontroller
        viewcontroller.footballModel = model
    }
    
    private func configure(viewcontroller: FootballVC, tableDataSource: FootballTableDataSource) {
        let model = FootballModel()
        model.output = viewcontroller
        tableDataSource.footballModel = model
    }
}
