//
//  CharacterDetailRouter.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 24/4/25.
//

import Foundation

class CharacterDetailRouter: CharacterDetailRouterProtocol {
    var viewController: CharacterDetailViewController

    init(viewController: CharacterDetailViewController) {
        self.viewController = viewController
    }
}
