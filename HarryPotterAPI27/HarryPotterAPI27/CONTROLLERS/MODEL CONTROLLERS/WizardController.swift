//
//  WizardController.swift
//  HarryPotterAPI27
//
//  Created by Austin West on 6/26/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class WizardController {
    
    static let shared = WizardController()
    
    let baseURL = URL(string: "https://www.potterapi.com/v1/")
    
    func fetchCharacters(completion: @escaping (Bool) -> Void) {
        
        guard let url = baseURL else { completion(false) ; return }
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let APIKeyQueryIUtem = URLQueryItem(name: "key", value: "$2a$10$yuEVIrB8CTLywFUQlbQnFuLutxdAW7Qt0LIz/pRuNr/lIVbs1S.2m")
        components?.queryItems = [APIKeyQueryIUtem]
        
        print(components?.url)
    }
}
