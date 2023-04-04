//
//  WelcomeViewController.swift
//  LogginApp
//
//  Created by Maksim Builov on 01/04/2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARC: IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var greatingLabel: UILabel!
    
    //MARC: Public variables for the background color views
    public let firstColor = UIColor(red: 200/255, green: 100/255, blue: 100/255, alpha: 1)
    public let secondColor = UIColor(red: 90/255, green: 150/255, blue: 200/255, alpha: 1)
    
    var welcomeUserName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARC: Setup background color
        view.addGradientLayer(firstColor: firstColor, secondColor: secondColor)
        welcomeLabel.text = "Welcome, \(welcomeUserName)!"
        greatingLabel.text = "My name is \(user.fullName)."
    }
}

        //MARC: - Set background color
extension UIView {
    func addGradientLayer(firstColor: UIColor, secondColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
