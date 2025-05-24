//
//  Network.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 14/4/25.
//

import Foundation

class Network: NetworkProtocol {
    func loadData(with endpoint: String) async throws -> Data {
        guard let url = URL(string: "\(Constant.baseURL)\(endpoint)") else {
            throw NetworkError.invalidURL
        }
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        return data
    }
}
