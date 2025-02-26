//
//  TeamView.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import SwiftUI

struct TeamView: View {
    
    @Binding var team: Team
    private let screenWidth = UIScreen.main.bounds.size.width
    
    var body: some View {
        
        let placeholderCircle = Circle()
            .fill(.placeholderGray)
            .frame(width: 60, height: 60)
        
        VStack(spacing: 10) {
            
            if let url = team.logo, url != "" {
                AsyncImageWithPlaceholder(url: url, placeholder: placeholderCircle, size: (60, 60))
            } else {
                placeholderCircle
            }
            
            Text(team.name)
                .font(.roboto(10))
                .foregroundStyle(.white)
                .truncationMode(.tail)
                .lineLimit(1)
                .frame(maxWidth: 0.355 * screenWidth)
            
        }
        .background(Color.clear)
    }
    
}

#Preview(traits: .sizeThatFitsLayout) {
    @Previewable @State var team = Team(logo: nil, id:"1", name: "Team 1 Team Team Team Team Team Team Team Team Team Team Team Team Team")
    TeamView(team: $team)
        .background(Color.blue)
}
