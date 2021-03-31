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
    
    var welcomText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomLabel.text = "Hello, " + welcomText + "!"
        
        logOutButton.layer.cornerRadius = 10
    }

    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    
}
