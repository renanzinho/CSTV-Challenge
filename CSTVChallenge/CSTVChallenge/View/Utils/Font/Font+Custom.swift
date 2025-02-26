//
//  Font+Custom.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import SwiftUI

extension Font {
    public static func roboto(_ size: CGFloat, design: RobotoDesign = .regular) -> Font {
        .custom("Roboto_Condensed-\(design.rawValue.capitalized)", size: size)
    }
    
    public enum RobotoDesign: String {
        case regular, medium
    }
}
