//
//  HomeRouter.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 17/4/25.
//

import Foundation

class HomeRouter: HomeRouterProtocol {
    var viewController: HomeViewController

    init(viewController: HomeViewController) {
        self.viewController = viewController
    }

    func goToCharacterDetail(with character: Character) {
        let characterDetailViewController = CharacterDetailBuilder.build(with: character)
        viewController.navigationController?.pushViewController(characterDetailViewController, animated: true)
    }
}
