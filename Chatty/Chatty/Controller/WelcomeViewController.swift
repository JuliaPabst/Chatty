//
//  ViewController.swift
//  Chatty
//
//  Created by Julia Pabst on 17.01.24.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let titleText = Constants.title
        var characterIndex = 0
        titleLabel.text = ""
        
        for letter in titleText{
            Timer.scheduledTimer(withTimeInterval: 0.2 * Double(characterIndex), repeats: false) {(timer) in self.titleLabel.text?.append(letter)}
            characterIndex += 1
        }
        
    }


}

