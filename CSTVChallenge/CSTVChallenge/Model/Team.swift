//
//  Team.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import UIKit

struct Team: Decodable {
    var logo: String?
    var id: String
    var name: String
    var players: [Player]? = nil
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case logo = "image_url"
    }
}
