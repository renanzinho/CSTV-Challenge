//
//  Match.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import Foundation

struct Match: Decodable {
    
    let id: String
    let teams: [Team]
    var started: Bool = false
    var startTime: Date? = nil
    let serieObj: Serie
    let leagueObj: League
    
    var league: String {
        leagueObj.name
    }
    
    var serie: String {
        serieObj.name
    }
    
    enum CodingKeys: String, CodingKey {
        case teams = "opponents"
        case startTime = "startTime"
        case id, serieObj, leagueObj
    }
    
    struct League: Decodable {
        let name: String
    }
    
    struct Serie: Decodable {
        let name: String
    }
    
}

enum MatchStatus: String, Decodable {
    case running
    case notStarted
}
