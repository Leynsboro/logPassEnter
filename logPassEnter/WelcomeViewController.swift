//
//  WelcomeViewController.swift
//  logPassEnter
//
//  Created by Илья Гусаров on 14.04.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeString: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, " + welcomeString
    }
    

}
