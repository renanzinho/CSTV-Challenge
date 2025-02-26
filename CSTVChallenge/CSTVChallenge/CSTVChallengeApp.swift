//
//  CSTVChallengeApp.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import SwiftUI

@main
struct CSTVChallengeApp: App {
    @State var match = Match(id: "1",
                             teams: [Team(logo: nil, id: "1", name: "Team 1", players: nil),
                                     Team(logo: nil, id:"2", name: "Team 2", players: nil)],
                             started: true,
                             startTime: nil,
                             serie: Serie(name: "Serie"),
                             league: League(name: "League test", image: nil))
    @State var team = Team(logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/PaiN_Gaming_logo.svg/1200px-PaiN_Gaming_logo.svg.png", id:"1", name: "Team 1")
    var body: some Scene {
        WindowGroup {
//            TeamView(team: $team)
            MatchCardView(match: $match)
        }
    }
}
