//
//  CharacterDTO.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 11/4/25.
//

import Foundation

struct CharactersDataDTO: Decodable {
    let results: [CharacterDTO]
    let info: InfoDTO
}

struct LocationInfoDTO: Decodable {
    let name: String
    let url: String
}

struct CharacterDTO: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: LocationInfoDTO
    let location: LocationInfoDTO
    let image: String
    let episodes: [String]
    let url: String
    let created: String

    enum CodingKeys: String, CodingKey {
        case id, name, status, species, type, gender, origin, location, image, url, created
        case episodes = "episode"
    }
}
