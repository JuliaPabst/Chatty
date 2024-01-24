//
//  ChatViewController.swift
//  Chatty
//
//  Created by Julia Pabst on 18.01.24.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class ChatViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var messageTextField: UITextField!
    
    var messages: [Message] = [Message(sender: "ju@pabst.com", body: "hi"), Message(sender: "ju@pabst.com", body: "hello")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.title
        navigationItem.hidesBackButton = true
    }

    @IBAction func sendMessage(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
    
}

