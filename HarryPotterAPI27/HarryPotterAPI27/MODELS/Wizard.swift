//
//  Wizard.swift
//  HarryPotterAPI27
//
//  Created by Austin West on 6/26/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit

class Wizard {
    
    let name: String
    let house: String
    let bloodStatus: String
    let role: String
    // Not from API
    let houseImage: UIImage
    
    init(name: String, house: String, bloodStatus: String, role: String, houseImage: UIImage) {
        self.name = name
        self.house = house
        self.bloodStatus = bloodStatus
        self.role = role
        // Not from API
        self.houseImage = houseImage
    }
}
