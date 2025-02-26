//
//  Match.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import Foundation

struct Match: Decodable {
    
    let id: String
    var teams: [Team]
    var status: MatchStatus
    var startTime: Date? = nil
    let serie: Serie
    let league: League
    
    enum CodingKeys: String, CodingKey {
        case teams = "opponents"
        case startTime = "startTime"
        case id, serie, league, status
    }
    
}

// Declared outside of object for easier testing
struct League: Decodable {
    let name: String
    let image: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case image = "image_url"
    }
}

struct Serie: Decodable {
    let name: String
}

enum MatchStatus: String, Decodable {
    case running
    case notStarted
    case notPlayed
    case finished
    
    enum CodingKeys: String, CodingKey {
        case notStarted = "not_started"
        case notPlayed = "not_played"
        case finished, running
    }
}
