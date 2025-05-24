//
//  StringExtensions.swift
//  RickAndMorty
//
//  Created by Pablo Miguel Ferrer on 22/4/25.
//

import Foundation

extension String {
    func removeFromParenthesis() -> String {
        let myString = self
        var charactersArray = Array(myString.components(separatedBy: "("))
        let newString = charactersArray.removeFirst()
        return newString
    }
}
