//
//  CharacterRepositoryProtocol.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 14/4/25.
//

import Foundation

protocol CharacterRepositoryProtocol {
    func getCharacters() async throws -> [Character]
}
