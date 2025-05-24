//
//  DetailHeaderCustomTableViewCell.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 24/4/25.
//

import UIKit

class DetailHeaderCustomTableViewCell: UITableViewCell {
    //MARK: - IBOutlet
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterSpecieLabel: UILabel!
    @IBOutlet weak var characterTypeLabel: UILabel!
    @IBOutlet weak var characterOriginLabel: UILabel!
    @IBOutlet weak var characterStatusLabel: UILabel!
    @IBOutlet weak var characterFirstTimeLabel: UILabel!
    @IBOutlet weak var characterLastTimeLabel: UILabel!

    //MARK: - Functions
    func configureHeaderCell(with character: Character) {
        setupUI()
        setupCell(with: character)
    }

    private func setupUI() {
        characterNameLabel.font = UIFont(name: "Bangers", size: 28)
        characterNameLabel.textColor = .white
        characterSpecieLabel.font = UIFont(name: "Roboto", size: 15)
        characterSpecieLabel.textColor = .white
        characterTypeLabel.font = UIFont(name: "Roboto", size: 15)
        characterTypeLabel.textColor = .white
        characterStatusLabel.font = UIFont(name: "Roboto", size: 15)
        characterStatusLabel.textColor = .white
        characterFirstTimeLabel.font = UIFont(name: "Roboto", size: 15)
        characterFirstTimeLabel.textColor = .white
        characterLastTimeLabel.font = UIFont(name: "Roboto", size: 15)
        characterLastTimeLabel.textColor = .white
        characterOriginLabel.font = UIFont(name: "Roboto", size: 15)
        characterOriginLabel.textColor = .white
    }

    private func setupCell(with character: Character) {
        if let url = URL(string: character.image) {
            characterImage.load(url: url)
        }
        characterNameLabel.text = character.name
        characterSpecieLabel.text = character.species
        characterTypeLabel.text = character.origin.name.removeFromParenthesis()
        characterStatusLabel.text = character.status.rawValue.capitalized
        characterFirstTimeLabel.text = character.origin.name.removeFromParenthesis()
        characterLastTimeLabel.text = character.location.name.removeFromParenthesis()
        characterOriginLabel.text = character.origin.name
    }
}
