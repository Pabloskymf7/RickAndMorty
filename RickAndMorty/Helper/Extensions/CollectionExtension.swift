//
//  CollectionExtension.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 25/4/25.
//

import Foundation

extension Collection {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
