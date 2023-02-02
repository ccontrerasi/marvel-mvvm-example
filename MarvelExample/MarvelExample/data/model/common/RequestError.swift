//
//  RequestError.swift
//  marvelExample
//
//  Created by Cristian Contreras on 2/2/23.
//

import Foundation

enum RequestError: Error, Equatable {
    case commonError
    case notInternet
    case timeout
    case incorrectURL
    case dataEmpty
    case mapError(Data)
    case managersHerency
}
