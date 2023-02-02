//
//  ViewController.swift
//  marvelExample
//
//  Created by Cristian Contreras on 2/2/23.
//

import UIKit
import Moya
import Combine

class ViewController: UIViewController {
    var disposeBag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO: ONLY TESTING!!! NEXT STEP -> MOVE TO VIEWMODEL !!!!!!
        /*let provider = MoyaProvider<ApiServices>(
            plugins: [VerbosePlugin(verbose: true)])
        
        CharactersRepository(provider: provider).getCharacters().sink { error in
            print("\(error)")
        } receiveValue: { response in
            print("\(response)")
        }.store(in: &disposeBag)*/
    }


}

