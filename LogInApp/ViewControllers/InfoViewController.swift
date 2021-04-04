//
//  InfoViewController.swift
//  LogInApp
//
//  Created by Теона Магай on 04.04.2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var countriLabel: UILabel!
    
    var nameT = ""
    var ageT = ""
    var countriT = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Name: " + nameT
        ageLabel.text = "Age: " + ageT
        countriLabel.text = "From " + countriT

    }
    

}
