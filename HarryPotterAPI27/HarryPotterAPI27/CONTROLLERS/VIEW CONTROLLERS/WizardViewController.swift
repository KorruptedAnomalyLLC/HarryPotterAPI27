//
//  MainViewController.swift
//  HarryPotterAPI27
//
//  Created by Austin West on 6/26/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit

class WizardViewController: UIViewController {
    
    var wizard: Wizard? {
        didSet {
            self.updateViews()
            
        }
    }
    
    @IBOutlet weak var houseImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var bloodStatusLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var wandButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wandButton.isEnabled = false
        wandButton.setImage(#imageLiteral(resourceName: "Wand"), for: .normal)
        WizardController.shared.fetchCharacters { (success) in
            DispatchQueue.main.async {
                self.wandButton.isEnabled = true
            }
        }
    }

    @IBAction func wandButtonTapped(_ sender: Any) {
        
        self.wizard = WizardController.shared.getRandomCharacter()
        // setting a new image
        // wandButton.setImage("myNewImage", for: .normal)
        
    }
    
    func updateViews() {
        guard let wizard = wizard else { return }
        self.nameLabel.text = wizard.name
        
        //image literal
        if wizard.house == "griffindor" {
            self.houseImageView.image = #imageLiteral(resourceName: <#T##String#>)
        } else if wizard.house == "huffle" {
            
        } else if wizard.house == "slyth" {
        
        } else if wizard.house == "ravenclaw" {
            
        } else {
            self.houseImageView.image = #imageLiteral(resourceName: <#T##String#>)
        }
    }
}
