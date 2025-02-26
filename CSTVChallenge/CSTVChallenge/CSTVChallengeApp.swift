//
//  CSTVChallengeApp.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import SwiftUI

@main
struct CSTVChallengeApp: App {
    var body: some Scene {
        WindowGroup {
//            TeamView(team: Team(logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/PaiN_Gaming_logo.svg/1200px-PaiN_Gaming_logo.svg.png", id:"1", name: "Team 1"))
            TeamView(team: .constant(Team(logo: nil, id:"1", name: "Team 1")))
        }
    }
}
