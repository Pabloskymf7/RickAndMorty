//
//  CharacterDetailProtocol.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 24/4/25.
//

import Foundation

protocol CharacterDetailViewModelProtocol {
    var character: Character { get }
    var episodes: [Episode] { get }
    var dataLoaded: (() -> Void)? { get set }
}

protocol CharacterDetailRouterProtocol {
}
