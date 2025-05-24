//
//  SplashRickAndMortyRouter.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 15/4/25.
//

import UIKit

class FakeSplashRouter: FakeSplashRouterProtocol {
    var viewController: FakeSplashViewController
    var window: UIWindow?

    init(viewController: FakeSplashViewController, window: UIWindow? = nil) {
        self.viewController = viewController
        self.window = window
    }

    func goToHomeScreen() {
        guard let window = window else { return }
        let tabBarViewController = TabBarViewController().build()
        let navigationController = UINavigationController(rootViewController: tabBarViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
