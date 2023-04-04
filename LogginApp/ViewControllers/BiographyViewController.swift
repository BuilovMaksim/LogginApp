//
//  BiographyViewController.swift
//  LogginApp
//
//  Created by Maksim Builov on 04/04/2023.
//

import UIKit

final class BiographyViewController: UIViewController {
    @IBOutlet var bioLable: UILabel!
    
    private let layerColor = WelcomeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARC: Setup background color
        view.addGradientLayer(
            firstColor: layerColor.firstColor,
            secondColor: layerColor.secondColor
        )
        
        bioLable.text = user.biography
    }
}
