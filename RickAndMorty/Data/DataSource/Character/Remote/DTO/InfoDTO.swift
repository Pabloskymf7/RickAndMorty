//
//  RAMInfoDTO.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 11/4/25.
//

import Foundation

struct InfoDTO: Decodable {
    var count: Int
    var pages: Int
    var next: String?
    var prev: String?
}
