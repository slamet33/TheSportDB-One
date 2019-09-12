//
//  FootballModel.swift
//  TheSportDB-One
//
//  Created by Qiarra on 23/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import Foundation

class FootballModel: FootballModelInput {
    
    let urlLeague = URL(string:"https://www.thesportsdb.com/api/v1/json/1/search_all_leagues.php?s=Soccer")!
    let urlMatch = URL(string:"https://www.thesportsdb.com/api/v1/json/1/eventsnextleague.php?id=4328")!
    let urlTeam = URL(string:"https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League")!
    let leagueID: [String] = ["4328", "4335", "4332", "4331", "4337" ,"4344"]
    let leagueName: [String] = ["Premier League", "La Liga", "Serie A", "Bundesliga", "Eredivise", "Primeira Liga"]
    
    var output : SportModelOutput?
    var dataLeague: [Countrys] = []
    var dataMatch: [Events] = []
    var dataTeam: [Teams] = []
    var datasLeague = [League]()
    
    let configuration = URLSessionConfiguration.default
    var session = URLSession.shared
    
    func configSession() {
        configuration.waitsForConnectivity = true
        session = URLSession(configuration: configuration)
    }
    
    func loadDataLeague(completionBlock: @escaping ([Countrys]) -> Void) {
        // Do Get Data using URLSession and Decoder
        for index in 0..<leagueID.count {
            datasLeague.append(League(idLeague: leagueID[index], strName: leagueName[index]))
        }
        
        let taskDataLeague = session.dataTask(with: urlLeague) { data, response, error in
            if let data = data {
                do {
                    let res = try JSONDecoder().decode(DataLeague.self, from: data)
                    let data: [Countrys] = res.countrys!
                    DispatchQueue.main.async {
                        completionBlock(data)
                    }
                } catch let error {
                    self.output?.modelDidFail(error)
                    print(error)
                }
            }
        }
        taskDataLeague.resume()
    }
    
    func loadDataTeam(idLeague: String, completionBlock: @escaping ([Teams]) -> Void) {
        // Do Get Data using URLSession and Decoder
        
        let taskGetTeam = session.dataTask(with: urlTeam) { data, response, error in
            if let data = data {
                do {
                    let res = try JSONDecoder().decode(DataTeams.self, from: data)
                    let data: [Teams] = res.teams!
                    DispatchQueue.main.async {
                        DispatchQueue.main.async {
                            completionBlock(data)
                        }
                    }
                } catch let error {
                    self.output?.modelDidFail(error)
                    print(error)
                }
            }
        }
        taskGetTeam.resume()
    }
    
    func loadDataMatch(idLeague: String, completionBlock: @escaping ([Events]) -> Void) {
        // Do Get Data using URLSession and Decoder
        if idLeague != "4328" {
            let json = "{ 'id' : '\(idLeague)'}"
            var request = URLRequest(url: urlMatch)
            request.httpMethod = "Post"
            request.httpBody = json.data(using: .utf8)
            let taskGetMatch = session.dataTask(with: request) { data, response, error in
                if let data = data {
                    do {
                        let res = try JSONDecoder().decode(DataEvents.self, from: data)
                        let data: [Events] = res.events!
                        DispatchQueue.main.async {
                            completionBlock(data)
                        }
                    } catch let error {
                        self.output?.modelDidFail(error)
                        print(error)
                    }
                }
            }
            taskGetMatch.resume()
            
        } else {
            let json = "{ 'id' : '4328'}"
            var request = URLRequest(url: urlMatch)
            request.httpMethod = "Post"
            request.httpBody = json.data(using: .utf8)
            let taskGetMatch = session.dataTask(with: request) { data, response, error in
                if let data = data {
                    do {
                        let res = try JSONDecoder().decode(DataEvents.self, from: data)
                        let data: [Events] = res.events!
                        self.dataMatch = data
                        DispatchQueue.main.async {
                            completionBlock(data)
                        }
                    } catch let error {
                        self.output?.modelDidFail(error)
                        print(error)
                    }
                }
            }
            taskGetMatch.resume()
        }
    }
}

protocol FootballModelInput {
    func loadDataLeague(completionBlock: @escaping ([Countrys]) -> Void) -> Void
    func loadDataMatch(idLeague: String, completionBlock: @escaping ([Events]) -> Void) -> Void
    func loadDataTeam(idLeague: String, completionBlock: @escaping ([Teams]) -> Void) -> Void
    func configSession()
}
