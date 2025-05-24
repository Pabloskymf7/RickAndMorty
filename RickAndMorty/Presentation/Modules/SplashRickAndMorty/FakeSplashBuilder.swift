//
//  SplashRickAndMortyBuilder.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 15/4/25.
//

import UIKit

class FakeSplashBuilder {
    func build(window: UIWindow) -> FakeSplashViewController {
        let viewController = UIStoryboard(name: "FakeSplashViewController", bundle: nil).instantiateViewController(withIdentifier: "FakeSplashViewController") as! FakeSplashViewController
        let router = FakeSplashRouter(viewController: viewController, window: window)
        viewController.viewModel = FakeSplashViewModel(router: router)
        return viewController
    }
}
