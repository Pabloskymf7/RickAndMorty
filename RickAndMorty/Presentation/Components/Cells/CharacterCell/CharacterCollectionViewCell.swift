//
//  CharacterCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 22/4/25.
//

import UIKit

//
//  CharacterCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 22/4/25.
//

class CharacterCollectionViewCell: UICollectionViewCell {
    //MARK: -IBOutlet
    @IBOutlet weak var characterUIImage: UIImageView!
    @IBOutlet weak var characterNameTextLabel: UILabel!
    @IBOutlet weak var surviveCharacterTextLabel: UILabel!
    @IBOutlet weak var characterLocationTextLabel: UILabel!
    @IBOutlet weak var favouriteHeartImage: UIImageView!

    //MARK: -Properties
    var isPressed: Bool = false

    func configureCell(with character: Character) {
        if let url = URL(string: character.image) {
            characterUIImage.load(url: url)
        }
        characterNameTextLabel.text = character.name
        surviveCharacterTextLabel.text = character.status.rawValue.capitalized + " -"
        characterLocationTextLabel.text = character.origin.name.removeFromParenthesis().capitalized
        self.layer.cornerRadius = 4
        characterUIImage.layer.cornerRadius = 4
        configureFonts()

        switch character.status {
        case .alive:
            surviveCharacterTextLabel.textColor = .customGreen

        case .dead:
            surviveCharacterTextLabel.textColor = .systemRed

        case .unknown:
            surviveCharacterTextLabel.textColor = .customTransparentGrey
        }
    }

    private func configureFonts() {
        characterNameTextLabel.font = UIFont(name: "Roboto-Bold", size: 18)
        surviveCharacterTextLabel.font = UIFont(name: "Roboto-Italic", size: 15)
        characterLocationTextLabel.font = UIFont(name: "Roboto-Italic", size: 15)
    }

    //MARK: -IBActions
    @IBAction func didSelectedFavourites(_ sender: Any) {
        isPressed.toggle()
        if isPressed {
            favouriteHeartImage.image = UIImage(named: "EmptyHeart")
        } else {
            favouriteHeartImage.image = UIImage(named: "ColoredHeart")
        }
    }
}
