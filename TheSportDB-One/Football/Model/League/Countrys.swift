/*
 Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar
 
 */

import Foundation
struct Countrys : Codable {
    let idLeague : String?
    let idSoccerXML : String?
    let strSport : String?
    let strLeague : String?
    let strLeagueAlternate : String?
    let strDivision : String?
    let idCup : String?
    let intFormedYear : String?
    let dateFirstEvent : String?
    let strGender : String?
    let strCountry : String?
    let strWebsite : String?
    let strFacebook : String?
    let strTwitter : String?
    let strYoutube : String?
    let strRSS : String?
    let strDescriptionEN : String?
    let strDescriptionDE : String?
    let strDescriptionFR : String?
    let strDescriptionIT : String?
    let strDescriptionCN : String?
    let strDescriptionJP : String?
    let strDescriptionRU : String?
    let strDescriptionES : String?
    let strDescriptionPT : String?
    let strDescriptionSE : String?
    let strDescriptionNL : String?
    let strDescriptionHU : String?
    let strDescriptionNO : String?
    let strDescriptionPL : String?
    let strDescriptionIL : String?
    let strFanart1 : String?
    let strFanart2 : String?
    let strFanart3 : String?
    let strFanart4 : String?
    let strBanner : String?
    let strBadge : String?
    let strLogo : String?
    let strPoster : String?
    let strTrophy : String?
    let strNaming : String?
    let strComplete : String?
    let strLocked : String?
    
    enum CodingKeys: String, CodingKey {
        
        case idLeague = "idLeague"
        case idSoccerXML = "idSoccerXML"
        case strSport = "strSport"
        case strLeague = "strLeague"
        case strLeagueAlternate = "strLeagueAlternate"
        case strDivision = "strDivision"
        case idCup = "idCup"
        case intFormedYear = "intFormedYear"
        case dateFirstEvent = "dateFirstEvent"
        case strGender = "strGender"
        case strCountry = "strCountry"
        case strWebsite = "strWebsite"
        case strFacebook = "strFacebook"
        case strTwitter = "strTwitter"
        case strYoutube = "strYoutube"
        case strRSS = "strRSS"
        case strDescriptionEN = "strDescriptionEN"
        case strDescriptionDE = "strDescriptionDE"
        case strDescriptionFR = "strDescriptionFR"
        case strDescriptionIT = "strDescriptionIT"
        case strDescriptionCN = "strDescriptionCN"
        case strDescriptionJP = "strDescriptionJP"
        case strDescriptionRU = "strDescriptionRU"
        case strDescriptionES = "strDescriptionES"
        case strDescriptionPT = "strDescriptionPT"
        case strDescriptionSE = "strDescriptionSE"
        case strDescriptionNL = "strDescriptionNL"
        case strDescriptionHU = "strDescriptionHU"
        case strDescriptionNO = "strDescriptionNO"
        case strDescriptionPL = "strDescriptionPL"
        case strDescriptionIL = "strDescriptionIL"
        case strFanart1 = "strFanart1"
        case strFanart2 = "strFanart2"
        case strFanart3 = "strFanart3"
        case strFanart4 = "strFanart4"
        case strBanner = "strBanner"
        case strBadge = "strBadge"
        case strLogo = "strLogo"
        case strPoster = "strPoster"
        case strTrophy = "strTrophy"
        case strNaming = "strNaming"
        case strComplete = "strComplete"
        case strLocked = "strLocked"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        idLeague = try values.decodeIfPresent(String.self, forKey: .idLeague)
        idSoccerXML = try values.decodeIfPresent(String.self, forKey: .idSoccerXML)
        strSport = try values.decodeIfPresent(String.self, forKey: .strSport)
        strLeague = try values.decodeIfPresent(String.self, forKey: .strLeague)
        strLeagueAlternate = try values.decodeIfPresent(String.self, forKey: .strLeagueAlternate)
        strDivision = try values.decodeIfPresent(String.self, forKey: .strDivision)
        idCup = try values.decodeIfPresent(String.self, forKey: .idCup)
        intFormedYear = try values.decodeIfPresent(String.self, forKey: .intFormedYear)
        dateFirstEvent = try values.decodeIfPresent(String.self, forKey: .dateFirstEvent)
        strGender = try values.decodeIfPresent(String.self, forKey: .strGender)
        strCountry = try values.decodeIfPresent(String.self, forKey: .strCountry)
        strWebsite = try values.decodeIfPresent(String.self, forKey: .strWebsite)
        strFacebook = try values.decodeIfPresent(String.self, forKey: .strFacebook)
        strTwitter = try values.decodeIfPresent(String.self, forKey: .strTwitter)
        strYoutube = try values.decodeIfPresent(String.self, forKey: .strYoutube)
        strRSS = try values.decodeIfPresent(String.self, forKey: .strRSS)
        strDescriptionEN = try values.decodeIfPresent(String.self, forKey: .strDescriptionEN)
        strDescriptionDE = try values.decodeIfPresent(String.self, forKey: .strDescriptionDE)
        strDescriptionFR = try values.decodeIfPresent(String.self, forKey: .strDescriptionFR)
        strDescriptionIT = try values.decodeIfPresent(String.self, forKey: .strDescriptionIT)
        strDescriptionCN = try values.decodeIfPresent(String.self, forKey: .strDescriptionCN)
        strDescriptionJP = try values.decodeIfPresent(String.self, forKey: .strDescriptionJP)
        strDescriptionRU = try values.decodeIfPresent(String.self, forKey: .strDescriptionRU)
        strDescriptionES = try values.decodeIfPresent(String.self, forKey: .strDescriptionES)
        strDescriptionPT = try values.decodeIfPresent(String.self, forKey: .strDescriptionPT)
        strDescriptionSE = try values.decodeIfPresent(String.self, forKey: .strDescriptionSE)
        strDescriptionNL = try values.decodeIfPresent(String.self, forKey: .strDescriptionNL)
        strDescriptionHU = try values.decodeIfPresent(String.self, forKey: .strDescriptionHU)
        strDescriptionNO = try values.decodeIfPresent(String.self, forKey: .strDescriptionNO)
        strDescriptionPL = try values.decodeIfPresent(String.self, forKey: .strDescriptionPL)
        strDescriptionIL = try values.decodeIfPresent(String.self, forKey: .strDescriptionIL)
        strFanart1 = try values.decodeIfPresent(String.self, forKey: .strFanart1)
        strFanart2 = try values.decodeIfPresent(String.self, forKey: .strFanart2)
        strFanart3 = try values.decodeIfPresent(String.self, forKey: .strFanart3)
        strFanart4 = try values.decodeIfPresent(String.self, forKey: .strFanart4)
        strBanner = try values.decodeIfPresent(String.self, forKey: .strBanner)
        strBadge = try values.decodeIfPresent(String.self, forKey: .strBadge)
        strLogo = try values.decodeIfPresent(String.self, forKey: .strLogo)
        strPoster = try values.decodeIfPresent(String.self, forKey: .strPoster)
        strTrophy = try values.decodeIfPresent(String.self, forKey: .strTrophy)
        strNaming = try values.decodeIfPresent(String.self, forKey: .strNaming)
        strComplete = try values.decodeIfPresent(String.self, forKey: .strComplete)
        strLocked = try values.decodeIfPresent(String.self, forKey: .strLocked)
    }
    
}
