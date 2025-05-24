//
//  HomeViewController.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 16/4/25.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK: -IBOutlet 
    @IBOutlet weak var characterCollectionView: UICollectionView!
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchStackView: UIStackView!

    //MARK: -Properties
    var viewModel: HomeViewModelProtocol!

    //MARK: -Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollection()
        setupUI()
        viewModel.viewDidLoad()
        setupBindings()
        searchTextField.addTarget(self, action: #selector(textFieldDidChange(_ :)), for: .editingChanged)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    func setupBindings() {
        viewModel.dataLoaded = {
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                self.characterCollectionView.reloadData()
            }
        }
    }

    func setupUI() {
        titleTextLabel.font = UIFont(name: "Bangers-Regular", size: 32)
        searchStackView.layer.cornerRadius = 1
    }

    @objc func textFieldDidChange(_ textField: UITextField) {
        viewModel.searchCharacters(with: textField.text)
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.goToCharacterDetail(with: indexPath.row)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.filteredCharacters.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharacterCollectionViewCell", for: indexPath) as! CharacterCollectionViewCell
        cell.configureCell(with: viewModel.filteredCharacters[indexPath.row])
        return cell
    }

    func configureCollection() {
        let nib = UINib(nibName: "CharacterCollectionViewCell", bundle: nil)
        characterCollectionView.register(nib, forCellWithReuseIdentifier: "CharacterCollectionViewCell")
        characterCollectionView.dataSource = self
        characterCollectionView.delegate = self
    }
}
