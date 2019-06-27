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
    
    let baseURL = URL(string: "https://www.potterapi.com/v1/characters/")
    
    var wizards: [Wizard] = []
    
    func fetchCharacters(completion: @escaping (Bool) -> Void) {
        
        guard let url = baseURL else { completion(false) ; return }
//        let fullURL = url.appendingPathExtension("characters")
        
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let APIKeyQueryIUtem = URLQueryItem(name: "key", value: "$2a$10$yuEVIrB8CTLywFUQlbQnFuLutxdAW7Qt0LIz/pRuNr/lIVbs1S.2m")
        components?.queryItems = [APIKeyQueryIUtem]
        
        guard let finalURL = components?.url else {completion(false); return }
        
        let datatask = URLSession.shared.dataTask(with: finalURL) { (data, _, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(false)
                return
            }
            guard let data = data else { completion(false); return }
            do {
                let jsonDecoder = JSONDecoder()
                let wizards = try jsonDecoder.decode([Wizard].self, from: data)
                self.wizards = wizards
                completion(true)
            } catch {
                print(error.localizedDescription)
            }
        }
        datatask.resume()
    }
    
    func getRandomCharacter() -> Wizard? {
        guard let wizard = wizards.randomElement() else { return nil }
        return wizard
    }
}
