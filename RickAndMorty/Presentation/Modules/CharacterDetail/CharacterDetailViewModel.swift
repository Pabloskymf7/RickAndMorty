//
//  CharacterDetailViewModel.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 24/4/25.
//

import Foundation

class CharacterDetailViewModel: CharacterDetailViewModelProtocol {
    var router: CharacterDetailRouterProtocol
    var characterUseCase: CharacterUseCaseProtocol
    var character: Character
    var episodes = [Episode]()
    var dataLoaded: (() -> Void)?

    init(router: CharacterDetailRouterProtocol, characterUseCase: CharacterUseCaseProtocol, character: Character) {
        self.router = router
        self.characterUseCase = characterUseCase
        self.character = character
    }
}
