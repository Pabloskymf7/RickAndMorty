//
//  CharacterDetailViewController.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 24/4/25.
//

import UIKit

class CharacterDetailViewController: UIViewController {
    //MARK: - IBOutlet
    @IBOutlet weak var detailTableView: UITableView!

    //MARK: - Properties
    var viewModel: CharacterDetailViewModelProtocol!

    //MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        setupUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.tabBarController?.isTabBarHidden = true
    }

    func setupUI() {
        detailTableView.backgroundColor = .customGrey
    }
}

extension CharacterDetailViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let headerCell = tableView.dequeueReusableCell(withIdentifier: "DetailHeaderCustomTableViewCell", for: indexPath) as! DetailHeaderCustomTableViewCell
            headerCell.configureHeaderCell(with: viewModel.character)
            headerCell.selectionStyle = .none
            return headerCell
        } else {
            let listCell = tableView.dequeueReusableCell(withIdentifier: "DetailListTableViewCell", for: indexPath) as! DetailListTableViewCell
            listCell.display(episodes: viewModel.character.episodes)
            listCell.selectionStyle = .none
            return listCell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return UITableView.automaticDimension
        } else {
            return 350
        }
    }

    func configureTableView() {
        let headerNib = UINib(nibName: "DetailHeaderCustomTableViewCell", bundle: nil)
        detailTableView.register(headerNib, forCellReuseIdentifier: "DetailHeaderCustomTableViewCell")

        let listNib = UINib(nibName: "DetailListTableViewCell", bundle: nil)
        detailTableView.register(listNib, forCellReuseIdentifier: "DetailListTableViewCell")

        detailTableView.dataSource = self
        detailTableView.delegate = self
    }
}
