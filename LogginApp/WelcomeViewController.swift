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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, " +  welcomeUserName + " !"
    }
}
