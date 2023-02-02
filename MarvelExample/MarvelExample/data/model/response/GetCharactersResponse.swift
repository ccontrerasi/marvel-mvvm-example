//
//  GetCharactersResponse.swift
//  marvelExample
//
//  Created by Cristian Contreras on 2/2/23.
//

import Foundation

struct GetCharacterResponse: Codable {
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
    let results: [CharacterDTO]
    
}

struct CharacterDTO: Codable {
    let id: Int
    let name: String
    let description: String
    let modified: Date
    let resourceURI: String
    let urls: [UrlDTO]
    let thumbnail: ThumbnailDTO
    let comics: ComicDTO
    let stories: StoryDTO
    let events: EventDTO?
    let series: SerieDTO
}

struct ComicDTO: Codable {
    let available: Int
    let returned: Int
    let collectionURI: String
    let items: [ComicItemDTO]
}

struct ComicItemDTO: Codable {
    let resourceURI: String
    let name: String
}

struct StoryDTO: Codable {
    let available: Int
    let returned: Int
    let collectionURI: String
    let items: [StoryItemDTO]
}

struct StoryItemDTO: Codable {
    let resourceURI: String
    let name: String
    let type: String
}

struct EventDTO: Codable {
    let available: Int
    let returned: Int
    let collectionURI: String
    let events: [EventItemDTO]?
}

struct EventItemDTO: Codable {
    let resourceURI: String
    let name: String
}

struct SerieDTO: Codable {
    let available: Int
    let returned: Int
    let collectionURI: String
    
}

struct SerieItemDTO: Codable {
    let resourceURI: String
    let name: String
}
