//
//  Repository.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 11/4/25.
//

import Foundation

class CharacterRepository: CharacterRepositoryProtocol {
    private let remoteCharacterDataSource: CharacterRemoteDataSourceProtocol

    init(remoteCharacterDataSource: CharacterRemoteDataSourceProtocol) {
        self.remoteCharacterDataSource = remoteCharacterDataSource
    }

    func getCharacters() async throws -> [Character]{
        let charactersDTO = try await remoteCharacterDataSource.getAllCharacters()
        return charactersDTO.map { $0.toDomain() }
    }
}

fileprivate extension LocationInfoDTO {
    func toDomain() -> LocationInfo{
        LocationInfo(name: self.name,
                     url: self.url)
    }
}

fileprivate extension CharacterDTO {
    func toDomain() -> Character {
        Character(id: self.id,
                  name: self.name,
                  status: CharacterStatus(rawValue: self.status.lowercased()) ?? .unknown,
                  origin: self.origin.toDomain(),
                  species: self.species,
                  type: self.type,
                  location: self.location.toDomain(),
                  image: self.image,
                  episodes: self.episodes)
    }
}
