//
//  MatchCardView.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import SwiftUI

struct MatchCardView: View {
    
    @Binding var match: Match
    
    var body: some View {
        ZStack {
            Color.backgroundSoftBlue
            
            VStack(spacing: 0) {
                
                topView
                    .padding(.vertical, 18.5)
                    .padding(.top, 25)
                
                Divider()
                    .overlay(Color.white.opacity(0.2))
                
                bottomView
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
        }
        .overlay(alignment: .topTrailing) {
            statusView
        }
        .clipped(antialiased: true)
        .clipShape(.rect(cornerRadius: 16))
        .frame(height: 176)
    }
    
    var statusView: some View {
        HStack {
            Spacer()
            Text("AGORA")
                .font(.roboto(8, design: .bold))
                .padding(8)
                .foregroundStyle(.white)
                .background(Color.backgroundRed)
                .clipped(antialiased: true)
                .clipShape(.rect(bottomLeadingRadius: 16))
        }
    }
    
    var topView: some View {
        HStack(spacing: 20) {
            TeamView(team: $match.teams[0])
            
            Text("VS")
                .font(.roboto(12))
                .foregroundStyle(.white)
                .opacity(0.5)
            
            TeamView(team: $match.teams[1])
        }
    }
    
    var bottomView: some View {
        
        let size: CGFloat = 16
        let placeholderCircle = Circle()
            .fill(.placeholderGray)
            .frame(width: size, height: size)
        
        return HStack {
            HStack(spacing: 8) {
                if let url = match.league.image, url != "" {
                    AsyncImageWithPlaceholder(url: url, placeholder: placeholderCircle, size: (size, size))
                } else {
                    placeholderCircle
                }
                Text("\(match.league.name) \(match.serie.name)")
                    .font(.roboto(8))
                    .foregroundStyle(.white)
            }
            Spacer()
        }
    }
    
}

#Preview(traits: .fixedLayout(width: 400, height: 200)) {
    @Previewable @State var match = Match(id: "1",
                                          teams: [Team(logo: nil, id: "1", name: "Team 1", players: nil),
                                                  Team(logo: nil, id:"2", name: "Team 2", players: nil)],
                                          started: true,
                                          startTime: nil,
                                          serie: Serie(name: "Serie"),
                                          league: League(name: "League test", image: nil))
    MatchCardView(match: $match)
}
