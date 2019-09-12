//
//  FootballOutput.swift
//  TheSportDB-One
//
//  Created by Qiarra on 23/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import Foundation

protocol SportModelOutput: class{
    func modelDidLoad(dataLeague: [League], dataMatch: [Events], dataTeam: [Teams])
    func modelDidFail(_ error: Error)
}
