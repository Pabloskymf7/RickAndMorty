//
//  TabBarViewController.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 23/4/25.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarView()
    }

    func build() -> TabBarViewController {
        self
    }

    func configureTabBarView() {
        let homeViewController = HomeBuilder().build()
        let characterDetailViewController = HomeBuilder().build()
        let viewControllersList = [homeViewController, characterDetailViewController] 
        self.setViewControllers(viewControllersList, animated: true)

        guard let items = self.tabBar.items else {return}
        items[0].title = "Characters"
        items[0].image = UIImage(named: "ColoredLens")
        items[1].title = "My Favourites"
        items[1].image = UIImage(named: "GreyHeart")

        self.tabBar.tintColor = .customGreen
        UITabBar.appearance().barTintColor = .white
    }
}
