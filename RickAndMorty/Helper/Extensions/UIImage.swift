//
//  UIImage.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 17/4/25.
//

import UIKit

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }else {
                    print("Image not found")
                }
            }else {
                print("Url not found")
            }
        }
    }
}
