//
//  SplashRickAndMortyViewController.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 15/4/25.
//

import UIKit

class FakeSplashViewController: UIViewController {
    //MARK: -IBOutlet
    @IBOutlet weak var checkingConexionTextLabel: UILabel!

    //MARK: - Properties
    var viewModel: FakeSplashViewModel!
    let rickGif = UIImage.gifImageWithName("RickAndMortyGif")

    //MARK: - Life Cycle
    override func viewDidLoad(){
        super.viewDidLoad()
        setupUI()
        viewModel.goToHomeScreen()
    }

    private func setupUI() {
        let imageView = UIImageView(image: rickGif)
        imageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        imageView.contentMode = .center
        view.insertSubview(imageView, belowSubview: checkingConexionTextLabel)
    }
}

