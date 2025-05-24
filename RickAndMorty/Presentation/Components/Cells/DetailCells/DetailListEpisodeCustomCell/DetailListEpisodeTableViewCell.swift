//
//  DetailListEpisodeTableViewCell.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 24/4/25.
//

import UIKit

class DetailListEpisodeTableViewCell: UITableViewCell {
    //MARK: - IBOultet
    @IBOutlet weak var episodeNameTextLabel: UILabel!

    //MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        episodeNameTextLabel.text = nil
    }
    
    func configureEpisodeCell(with url: String) {
        episodeNameTextLabel.text = url
    }

    private func setupUI() {
        episodeNameTextLabel.textColor = .customYellow
        episodeNameTextLabel.font = UIFont(name: "Roboto", size: 15)
    }
}
