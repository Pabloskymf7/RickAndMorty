//
//  NetwokProtocol.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 14/4/25.
//

import Foundation

protocol NetworkProtocol {
    func loadData(with endpoint: String) async throws -> Data
}
