//
//  DataLeague.swift
//  TheSportDB-One
//
//  Created by Qiarra on 23/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import Foundation
struct DataLeague : Codable {
    let countrys : [Countrys]?
    
    enum CodingKeys: String, CodingKey {
        
        case countrys = "countrys"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        countrys = try values.decodeIfPresent([Countrys].self, forKey: .countrys)
    }
    
}
