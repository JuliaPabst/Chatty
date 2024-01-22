//
//  LogInViewController.swift
//  Chatty
//
//  Created by Julia Pabst on 18.01.24.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func logInPressed(_ sender: UIButton) {
        
        if let email = usernameTextField.text, let password = passwordTextField.text{
            
        }
    }
    
}
