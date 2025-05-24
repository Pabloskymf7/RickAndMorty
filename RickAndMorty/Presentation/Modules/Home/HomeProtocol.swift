//
//  HomeProtocol.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 17/4/25.
//

import Foundation

protocol HomeRouterProtocol {
    func goToCharacterDetail(with character: Character)
}

protocol HomeViewModelProtocol {
    var dataLoaded: (() -> Void)? { get set }
    var searchText: String? { get set }
    var filteredCharacters: [Character] { get }
    func goToCharacterDetail(with index: Int)
    func viewDidLoad()
    func searchCharacters(with text: String?)
}
