//
//  SkeletonView.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import SwiftUI

struct BlinkViewModifier: ViewModifier {
    let duration: Double
    @State private var blinking: Bool = false

    func body(content: Content) -> some View {
        content
            .opacity(blinking ? 0.4 : 0.8)
            .animation(.easeInOut(duration: duration).repeatForever(), value: blinking)
            .onAppear {
                blinking.toggle()
            }
    }
}

extension View {
    func blinking(duration: Double = 1) -> some View {
        modifier(BlinkViewModifier(duration: duration))
    }
}
