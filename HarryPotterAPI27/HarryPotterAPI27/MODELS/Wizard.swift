//
//  Wizard.swift
//  HarryPotterAPI27
//
//  Created by Austin West on 6/26/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit

class Wizard: Codable {
    
    let name: String
    let house: String?
    let bloodStatus: String
    let role: String?
    
    init(name: String, house: String, bloodStatus: String, role: String) {
        self.name = name
        self.house = house
        self.bloodStatus = bloodStatus
        self.role = role
    }
 
}

//"_id": "5a0fa4daae5bc100213c232e",
//"name": "Hannah Abbott",
//"role": "student",
//"house": "Hufflepuff",
//"school": "Hogwarts School of Witchcraft and Wizardry",
//"__v": 0,
//"ministryOfMagic": false,
//"orderOfThePhoenix": false,
//"dumbledoresArmy": true,
//"deathEater": false,
//"bloodStatus": "half-blood",
//"species": "human"


