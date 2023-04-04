//
//  PersonalDataViewController.swift
//  LogginApp
//
//  Created by Maksim Builov on 04/04/2023.
//

import UIKit

final class PersonalDataViewController: UIViewController {
    
    //MARC: IB Outlets
    @IBOutlet var titleNC: UINavigationItem!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    private let layerColor = WelcomeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleNC.title = "\(user.fullName)"
        
        //MARC: Setup background color
        view.addGradientLayer(
            firstColor: layerColor.firstColor,
            secondColor: layerColor.secondColor
        )
        
        //MARC: Setup labels
        nameLabel.text = user.name
        nameLabel.font = .italicSystemFont(ofSize: 20)
        surnameLabel.text = user.surname
        surnameLabel.font = .italicSystemFont(ofSize: 20)
        ageLabel.text = String(user.age)
        ageLabel.font = .italicSystemFont(ofSize: 20)
        professionLabel.text = user.profession.rawValue
        professionLabel.font = .italicSystemFont(ofSize: 20)
        hobbyLabel.text = user.hobby.rawValue
        hobbyLabel.font = .italicSystemFont(ofSize: 20)
    }

}
