//
//  AsyncImageWithPlaceholder.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 26/02/25.
//

import SwiftUI

struct AsyncImageWithPlaceholder<Content: View>: View {
    
    let url: String
    let placeholder: Content
    let size: (width: CGFloat, height: CGFloat)
    
    var body: some View {
        AsyncImage(url: URL(string: url),
                   transaction: Transaction(animation: .easeInOut(duration: 0.3))) { phase in
            switch phase {
            case .empty:
                placeholder
                    .blinking()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: size.width, height: size.height)
            default:
                placeholder
            }
        }
    }
}
