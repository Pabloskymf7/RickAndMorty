//
//  SplashRickAndMortyViewModel.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 15/4/25.
//

import Foundation

class FakeSplashViewModel: FakeSplashViewModelProtocol {
    private let router: FakeSplashRouterProtocol

    init(router: FakeSplashRouterProtocol) {
        self.router = router
    }

    func goToHomeScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) { [weak self] in
            guard let self else { return }
            self.router.goToHomeScreen()
        }
    }
}
