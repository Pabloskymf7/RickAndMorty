//
//  CharacterUseCase.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 14/4/25.
//

import Foundation

class CharacterUseCase: CharacterUseCaseProtocol {
    private let repository: CharacterRepositoryProtocol

    init(repository: CharacterRepositoryProtocol) {
        self.repository = repository
    }

    func getCharacters() async throws -> [Character] {
        return try await repository.getCharacters()
    }
}
