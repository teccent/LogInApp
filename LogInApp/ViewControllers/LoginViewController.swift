//
//  ViewController.swift
//  LogInApp
//
//  Created by Теона Магай on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    let user = Person(userInfo: User())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeText = user.personName
            } else if let infoVC = viewController as? InfoViewController {
                infoVC.nameT = user.personName
                infoVC.ageT = user.personAge
                infoVC.countriT = user.personCountri
            } else if let factsVC = viewController as? FactsViewController {
                factsVC.animalT = user.favouriteAnimal
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    @IBAction func logInAction() {
        if userNameTF.text != user.userInfo.userName ||
            passwordTF.text != user.userInfo.password {
                showAlert(with: "Oops!",
                          and: "The username or password is incorrect")
                passwordTF.text = ""
            }
    }
    
    
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Remind!", and: "User name - \(user.userInfo.userName)")
    }
    
    
    @IBAction func forgotPasswordAction() {
        showAlert(with: "Remind!", and: "Password - \(user.userInfo.password)")
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}


extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let gotItAction = UIAlertAction(title: "Got it!", style: .default)
        alert.addAction(gotItAction)
        present(alert, animated: true)
    }
}

