//
//  TeamView.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import SwiftUI

struct TeamView: View {
    
    @Binding var team: Team
    
    var body: some View {
        
        let placeholderCircle = Circle().fill(.plahceholderGray)
        
        VStack(spacing: 10) {
            
            if let url = team.logo {
                AsyncImage(url: URL(string: url),
                           transaction: Transaction(animation: .easeInOut(duration: 0.3))) { phase in
                    switch phase {
                    case .empty:
                        placeholderCircle
                            .blinking()
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    default:
                        placeholderCircle
                    }
                }
            } else {
                placeholderCircle
            }
            
            Text(team.name)
                .font(.roboto(10))
                .foregroundColor(.white)
        }
        .background(Color.clear)
        .frame(maxWidth: 60)
    }
    
}

#Preview(traits: .sizeThatFitsLayout) {
    @Previewable @State var team = Team(logo: nil, id:"1", name: "Team 1")
    TeamView(team: $team)
        .background(Color.blue)
}
