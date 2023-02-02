//
//  CharactersRepository.swift
//  marvelExample
//
//  Created by Cristian Contreras on 2/2/23.
//

import Foundation
import Combine
import Moya

class CharactersRepository: ICharactersRepository {
    private let provider: MoyaProvider<ApiServices>
    
    init(provider: MoyaProvider<ApiServices>){
        self.provider = provider
    }
    
    func getCharacters(name: String? = nil) -> AnyPublisher<GetCharacterResponse, Error> {
        provider.requestPublisher(.getCharacters(name: name), typeResult: GetCharacterResponse.self)
    }
}
