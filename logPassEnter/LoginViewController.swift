//
//  ViewController.swift
//  logPassEnter
//
//  Created by Илья Гусаров on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.text = ""
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
        errorLabel.text = ""
    }

    @IBAction func enterButtonPress() {
        guard loginTF.text == "Ilya" else {
            errorLabel.text = "Неправильно введен логин"
            return
        }
        
        guard passwordTF.text == "12345" else {
            errorLabel.text = "Неправильно введен password"
            return
        }
        
        performSegue(withIdentifier: "cabinet", sender: nil)
    }
    
    
    
    
}

