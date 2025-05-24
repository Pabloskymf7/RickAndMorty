//
//  HomeBuilder.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 17/4/25.
//

import UIKit

class HomeBuilder {
    func build() -> HomeViewController {
        let viewController = UIStoryboard(name: "HomeViewController", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let network = Network()
        let router = HomeRouter(viewController: viewController)
        let characterRemoteDataSource = CharacterRemoteDataSource(network: network)
        let characterRepository = CharacterRepository(remoteCharacterDataSource: characterRemoteDataSource)
        let characterUseCase = CharacterUseCase(repository: characterRepository)
        viewController.viewModel = HomeViewModel(router: router, characterUseCase: characterUseCase)
        return viewController
    }
}
