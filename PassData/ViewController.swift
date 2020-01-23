//
//  ViewController.swift
//  PassData
//
//  Created by Apple User on 06.12.2019.
//  Copyright © 2019 Alena Khoroshilova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func sendButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard segue.source is SecondViewController else { return }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.email = emailTF.text
    }
    
    // hide a keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

