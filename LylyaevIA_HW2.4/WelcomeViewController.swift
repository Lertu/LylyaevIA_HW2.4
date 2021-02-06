//
//  WelcomeViewController.swift
//  LylyaevIA_HW2.3
//
//  Created by Игорь И on 03.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameLabel.text = "Welcome, \(userName!)!"
    }
    
    
    
}
