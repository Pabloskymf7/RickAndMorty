//
//  DetailListTableViewCell.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 24/4/25.
//

import UIKit

class DetailListTableViewCell: UITableViewCell {
    //MARK: - IBOutlet
    @IBOutlet weak var listTableView: UITableView!

    //MARK: - Properties
    var episodes = [String]()

    //MARK: - Functions
    func display(episodes: [String]) {
        self.episodes = episodes
        configureList()
    }

    func configureList() {
        let nib = UINib(nibName: "DetailListEpisodeTableViewCell", bundle: nil)
        listTableView.register(nib, forCellReuseIdentifier: "DetailListEpisodeTableViewCell")
        listTableView.dataSource = self
        listTableView.delegate = self
    }
}

extension DetailListTableViewCell: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTableView.dequeueReusableCell(withIdentifier: "DetailListEpisodeTableViewCell", for: indexPath) as! DetailListEpisodeTableViewCell
        cell.configureEpisodeCell(with: episodes[indexPath.row])
        return cell
    }
}
