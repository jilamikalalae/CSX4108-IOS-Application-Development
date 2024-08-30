//
//  ViewController.swift
//  TextField Events
//
//  Created by Jilamika on 29/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberTextFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func textFieldEditingDidBegin(_ sender: Any) {
        print("textFieldEditingDidBegin")
    }
    
    @IBAction func textFieldEditingChanged(_ sender: Any) {
        if let currentInput = phoneNumberTextFeild.text{
            if currentInput.count == 4 || currentInput.count == 8 {
                let firstPart = currentInput.substring(to: currentInput.count - 1)
                let hypen = "-"
                let lastPart = currentInput.substring(from: currentInput.count - 1)
                
                phoneNumberTextFeild.text = "\(firstPart)\(hypen)\(lastPart)"
            } else if currentInput.count == 12{
                phoneNumberTextFeild.resignFirstResponder()
            } else if currentInput.count >= 13 {
                phoneNumberTextFeild.text = currentInput.substring(to: 12)
                phoneNumberTextFeild.resignFirstResponder()
            }
        }
    }
    
    
    @IBAction func imDoneButtonClicked(_ sender: Any) {
        
        phoneNumberTextFeild.resignFirstResponder()
    }
    
}

