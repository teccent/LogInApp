//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Теона Магай on 30.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomLabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var welcomeText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomLabel.text = "Hello, " + welcomeText + "!"
        
        logOutButton.layer.cornerRadius = 10
    }
    
}
