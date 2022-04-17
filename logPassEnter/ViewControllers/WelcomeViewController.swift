//
//  WelcomeViewController.swift
//  logPassEnter
//
//  Created by Илья Гусаров on 14.04.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var name: String!
    var surname: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, " + name + " " + surname
    }
    

}
