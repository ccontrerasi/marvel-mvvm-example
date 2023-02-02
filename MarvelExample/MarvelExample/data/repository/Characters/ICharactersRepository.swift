//
//  ICharactersRepository.swift
//  marvelExample
//
//  Created by Cristian Contreras on 2/2/23.
//

import Foundation
import Combine

protocol ICharactersRepository {
    func getCharacters(name: String?) -> AnyPublisher<GetCharacterResponse, Error>
}
