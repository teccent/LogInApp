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

    let correctUserName = "User"
    let correctPassword = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController
        else { return }
        welcomeVC.welcomText = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let _ = touches.first{
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
    }
    
    
    @IBAction func logInAction(_ sender: UIButton) {
            if userNameTF.text != correctUserName {
                showAlert(with: "Oops!",
                          and: "The username is incorrect")
                userNameTF.text = ""
                passwordTF.text = ""
                return
            } else if passwordTF.text != correctPassword {
                showAlert(with: "Oops!",
                          and: "The password is incorrect")
                passwordTF.text = ""
                return
            }
    }
    
    
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Remind!", and: "User name - User")
    }
    
    
    @IBAction func forgotPasswordAction() {
        showAlert(with: "Remind!", and: "Password - 12345")
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
            preferredStyle: .alert)
        let gotItAction = UIAlertAction(title: "Got it!", style: .default)
        alert.addAction(gotItAction)
        present(alert, animated: true)
    }
}

