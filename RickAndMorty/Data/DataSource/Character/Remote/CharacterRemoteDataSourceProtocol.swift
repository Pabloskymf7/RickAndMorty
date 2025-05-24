//
//  RAMCharacterDataSourceProtocol.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 11/4/25.
//

import Foundation

protocol CharacterRemoteDataSourceProtocol {
    func getAllCharacters() async throws -> [CharacterDTO]
}
