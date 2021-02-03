//
//  LoginViewController.swift
//  LylyaevIA_HW2.3
//
//  Created by Игорь И on 03.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func logInButtonPressed(){
        authorization()
    }
    
    @IBAction func forgotNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
        return
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
        return
    }
    
    @IBAction func unwind (segue: UIStoryboardSegue){
        loginTextField.text = ""
        passwordTextField.text = ""
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.userName = loginTextField.text
    }
    
    private func authorization() -> Bool {
        let login = loginTextField.text
        let password = passwordTextField.text
        if login == "User" && password == "Password" {
            return true
        } else {
            showAlert(with: "Invalid login or password", and: """
                            Please,enter correct login and password
                            """
            )
            passwordTextField.text = ""
            return false
        }
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
}
