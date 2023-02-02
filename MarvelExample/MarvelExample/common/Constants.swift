//
//  Constants.swift
//  marvelExample
//
//  Created by Cristian Contreras on 2/2/23.
//

import Foundation

// Develop enviroment
#if DEVELOPMENT
let base_url = "https://gateway.marvel.com/"
let api_app = "v1/public/"
#else
let base_url = "https://gateway.marvel.com/"
let api_app = "v1/public/"
#endif
let public_key = ""
let private_key = ""
let CFBundleShortVersionString = "CFBundleShortVersionString"
var appVersion: String {
    get {
        Bundle.main.object(forInfoDictionaryKey: CFBundleShortVersionString) as? String ?? "0"
    }
}
var appBuild: String {
    get {
        Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as? String ?? "0"
    }
}
var appBundler: String {
    get {
        Bundle.main.bundleIdentifier ?? "UNKNOWED_BUNDLER"
    }
}
