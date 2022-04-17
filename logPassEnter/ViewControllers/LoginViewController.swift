//
//  ViewController.swift
//  logPassEnter
//
//  Created by Илья Гусаров on 13.04.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let username = "User"
    private let password = "12345"
    
    let user = User.getUser()
    let ls = user.info.hobbies[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLabel.text = ""
        loginTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeString = loginTF.text
            } else if let photoVC = viewController as? PhotoViewController {
                //
            } else if let navigationVC = viewController as? UINavigationController {
                let infoVC = navigationVC.topViewController as! InfoViewController
                //
            }
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
        errorLabel.text = ""
    }

    @IBAction func loginButtonPress() {
        checkForLogPass()
    }
    
    @IBAction func forgotUserOrPassPressed(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your usernamer is \(username)")
            : showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
}

extension LoginViewController {
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
        
    private func checkForLogPass() {
        guard loginTF.text == username, passwordTF.text == password else {
            errorLabel.text = "Неправильно введен логин или пароль"
            passwordTF.text = ""
            return
        }
        
        performSegue(withIdentifier: "cabinet", sender: nil)
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case loginTF:
            passwordTF.becomeFirstResponder()
        default:
            checkForLogPass()
        }
            return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

}

