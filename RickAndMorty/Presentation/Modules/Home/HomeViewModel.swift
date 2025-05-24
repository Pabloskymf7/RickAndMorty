//
//  HomeViewModel.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 17/4/25.
//

import Foundation

class HomeViewModel: HomeViewModelProtocol {
    var router: HomeRouterProtocol
    var characterUseCase: CharacterUseCaseProtocol
    var dataLoaded: (() -> Void)?
    var characters = [Character]()
    var filteredCharacters = [Character]()
    var searchText: String?

    init(router: HomeRouterProtocol, characterUseCase: CharacterUseCaseProtocol) {
        self.router = router
        self.characterUseCase = characterUseCase
    }

    func viewDidLoad() {
        getAllCharacters()
    }

    private func getAllCharacters() {
        Task {
            do {
                characters = try await characterUseCase.getCharacters()
                filteredCharacters = characters
                dataLoaded?()
            } catch {
                print("Error \(error)")
            }
        }
    }

    func goToCharacterDetail(with index: Int) {
        guard let character = filteredCharacters[safe: index] else { return }
        router.goToCharacterDetail(with: character)
    }

    func searchCharacters(with text: String?) {
        if let searchedText = text, !searchedText.isEmpty {
            var auxArray = [Character]()

            characters.forEach { character in
                if character.name.contains(searchedText) {
                    auxArray.append(character)
                }
            }
            filteredCharacters = auxArray
        }else {
            filteredCharacters = characters
        }
        dataLoaded?()
    }
}
