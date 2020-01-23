//
//  SecondViewController.swift
//  PassData
//
//  Created by Apple User on 06.12.2019.
//  Copyright © 2019 Alena Khoroshilova. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var email: String?
    @IBOutlet weak var somelabel: UILabel!
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let email = email else { return }
        somelabel.text = "Hello, \(email)"
    }
    
}
