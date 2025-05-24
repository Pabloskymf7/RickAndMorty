//
//  CharacterDetailBuilder.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 24/4/25.
//

import UIKit

class CharacterDetailBuilder {
    static func build(with character: Character) -> CharacterDetailViewController {
        let viewController = UIStoryboard(name: "CharacterDetailViewController", bundle: nil).instantiateViewController(identifier: "CharacterDetailViewController") as! CharacterDetailViewController
        let network = Network()
        let router = CharacterDetailRouter(viewController: viewController)
        let characterRemoteDataSource = CharacterRemoteDataSource(network: network)
        let characterRepository = CharacterRepository(remoteCharacterDataSource: characterRemoteDataSource)
        let characterUseCase = CharacterUseCase(repository: characterRepository)
        viewController.viewModel = CharacterDetailViewModel(router: router, characterUseCase: characterUseCase, character: character)
        return viewController
    }
}
