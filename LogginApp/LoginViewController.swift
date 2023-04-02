//
//  ViewController.swift
//  LogginApp
//
//  Created by Maksim Builov on 31/03/2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARC: IB Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    //MARC: Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        welcomeVC.welcomeUserName = userNameTF.text
    }
    
    //MARC: IB Actions
    @IBAction func logInButtonPressed() {
        guard let inputTextUserName = userNameTF.text, !inputTextUserName.isEmpty else {
            showAlert(
                withTitle: "Login field is empty",
                andMessage: "Please enter user name"
            )
            return
        }
        
        guard let inputTextPassword = passwordTF.text, !inputTextPassword.isEmpty else {
            showAlert(
                withTitle: "Password field is empty",
                andMessage: "Please enter password"
            )
            return
        }
        
        let userNamePattern = "Guest"
        let passwordPattern = "123456"
        let isUserNameValid = NSPredicate(format: "SELF MATCHES %@", userNamePattern)
            .evaluate(with: inputTextUserName)
        let isPasswordValid = NSPredicate(format: "SELF MATCHES %@", passwordPattern)
            .evaluate(with: inputTextPassword)
        
        if !isUserNameValid || !isPasswordValid {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return
        }
    }
    
    @IBAction func promptIsShownLogin() {
        showAlert(withTitle: "Oops!", andMessage: "Your login is 'Guest' 🤫")
    }
    
    @IBAction func promptIsShownPassword() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is '123456' 🤫")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is LoginViewController else { return }
    }
    
    //MARC: Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

