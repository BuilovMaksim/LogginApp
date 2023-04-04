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
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = guest.login
        passwordTF.text = guest.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeUserName = guest.basicData.name
                welcomeVC.title = "Home"
            } else if let personalVC = viewController as? UINavigationController {
                personalVC.title = "\(user.fullName)"
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARC: IB Actions
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == guest.login, passwordTF.text == guest.password else {
            showAlert(
                title: "Invalid user name or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your user name is '\(guest.login)' 🤫")
        : showAlert(title: "Oops!", message: "Your password is '\(guest.password)' 🤫")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
            userNameTF.text = ""
            passwordTF.text = ""
    }
    
    //MARC: Private Method
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

