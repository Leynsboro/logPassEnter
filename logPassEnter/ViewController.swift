//
//  ViewController.swift
//  logPassEnter
//
//  Created by Илья Гусаров on 13.04.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let username = "User"
    private let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLabel.text = ""
        loginTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeString = loginTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
        errorLabel.text = ""
    }

    @IBAction func loginButtonPress() {
        checkForLogPass()
    }
    
    @IBAction func forgotUserButton() {
        remindUserOrPass(username)
    }
    
    @IBAction func forgotPasswordButton() {
        remindUserOrPass(password)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        switch textField {
        case loginTF:
            passwordTF.becomeFirstResponder()
        default:
            checkForLogPass()
        }
            return true
    }
}

extension ViewController {
    private func checkForLogPass() {
        guard loginTF.text == username, passwordTF.text == password else {
            errorLabel.text = "Неправильно введен логин или пароль"
            passwordTF.text = ""
            return
        }
        
        performSegue(withIdentifier: "cabinet", sender: nil)
    }
    
    private func remindUserOrPass(_ data: String) {
        let alert = UIAlertController(title: "Reminder", message: "Your username or password is \(data)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK, thx", comment: "Default action"), style: .default))
        self.present(alert, animated: true, completion: nil)
    }
}

