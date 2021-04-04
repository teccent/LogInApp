//
//  FactsViewController.swift
//  LogInApp
//
//  Created by Теона Магай on 04.04.2021.
//

import UIKit

class FactsViewController: UIViewController {

    @IBOutlet var animalLabel: UILabel!
    
    var animalT = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalLabel.text = "Favotite animal is " + animalT
    }
    

}
