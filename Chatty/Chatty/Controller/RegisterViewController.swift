//
//  RegisterViewController.swift
//  Chatty
//
//  Created by Julia Pabst on 18.01.24.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pressRegisterButton(_ sender: UIButton) {
        
        if let email = usernameTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    // Navigate to Chat View Controller
                }
            }
        }
        
        
    }
}
