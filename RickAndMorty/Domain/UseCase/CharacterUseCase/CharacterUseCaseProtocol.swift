//
//  CharacterUseCaseProtocol.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 14/4/25.
//

import Foundation

protocol CharacterUseCaseProtocol {
    func getCharacters() async throws -> [Character]
}
