//
//  Character.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 14/4/25.
//

import Foundation

enum CharacterStatus: String {
    case alive
    case dead
    case unknown
}

class Character {
    let id: Int
    let name: String
    let status: CharacterStatus
    let origin: LocationInfo
    let species: String
    let type: String
    let location: LocationInfo
    let image: String
    let episodes: [String]

    init(id: Int, name: String, status: CharacterStatus, origin: LocationInfo, species: String, type: String, location: LocationInfo, image: String, episodes: [String]) {
        self.id = id
        self.name = name
        self.status = status
        self.origin = origin
        self.species = species
        self.type = type
        self.location = location
        self.image = image
        self.episodes = episodes
    }
}
