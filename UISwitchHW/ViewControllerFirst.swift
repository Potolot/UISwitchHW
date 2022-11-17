//
//  ViewController.swift
//  UISwitchHW
//
//  Created by Вадим Воляс on 09.11.2022.
//add

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.isSecureTextEntry = true
    }

    @IBAction func actionButton(_ sender: UIButton) {
        
        let loginText = loginTextField.text!
        let passwordText = passwordTextField.text!
        
        if loginText != "Admin" && passwordText != "1234" {
            let alertController = UIAlertController(title: "Error!", message: "user is't avilebel ", preferredStyle: .alert)
            let action = UIAlertAction(title: "Cencel", style: .default)

            alertController.addAction(action)
            self.present(alertController, animated: true)
        }
        

    }
    
}

