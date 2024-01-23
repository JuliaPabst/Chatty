//
//  LogInViewController.swift
//  Chatty
//
//  Created by Julia Pabst on 18.01.24.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class LogInViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func logInPressed(_ sender: UIButton) {
        
        if let email = usernameTextField.text, let password = passwordTextField.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    // Navigate to Chat View Controller
                    self.performSegue(withIdentifier: Constants.logInSegue, sender: self)
                }
            }
        }
    }
    
}
