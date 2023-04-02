//
//  WelcomeViewController.swift
//  LogginApp
//
//  Created by Maksim Builov on 01/04/2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcomeUserName: String!
    
    //MARC: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, " +  welcomeUserName + " !"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? LoginViewController else { return }
        loginVC.userNameTF.text = ""
        loginVC.passwordTF.text = ""
    }
}
