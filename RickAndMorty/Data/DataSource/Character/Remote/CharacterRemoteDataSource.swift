//
//  RAMCharacterDataSource.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 11/4/25.
//

import Foundation

class CharacterRemoteDataSource: CharacterRemoteDataSourceProtocol {
    private var network: NetworkProtocol
    
    init(network: NetworkProtocol) {
        self.network = network
    }

    func getAllCharacters() async throws -> [CharacterDTO] {
        let data = try await network.loadData(with: "/character")
        let response = try JSONDecoder().decode(CharactersDataDTO.self, from: data)
        return response.results
    }
}
