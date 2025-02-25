//
//  Player.swift
//  CSTVChallenge
//
//  Created by Renan Freitas on 25/02/25.
//

import UIKit

struct Player: Decodable {
    let igName: String
    let id: String
    let image: String?
    let firstName: String
    let lastName: String
    
    var name: String {
        return "\(firstName) \(lastName)"
    }
    
    enum CodingKeys: String, CodingKey {
        case igName = "name"
        case image = "image_url"
        case id, firstName, lastName
    }
    
}
