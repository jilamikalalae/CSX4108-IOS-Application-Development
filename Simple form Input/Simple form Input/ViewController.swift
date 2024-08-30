//
//  ViewController.swift
//  Simple form Input
//
//  Created by Jilamika on 12/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingMessage: UILabel!
    @IBOutlet var greetingMessage2: UILabel!
    @IBOutlet var FirstnameInput: UITextField!
    @IBOutlet var LastnameInput: UITextField!
    @IBOutlet var ageInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickMeButton() {
        let firstname = FirstnameInput.text
        let lastname = LastnameInput.text
        let age = ageInput.text
        
        if firstname != "" && lastname != "" && age != ""{
            greetingMessage.text = "Your name is \(firstname ?? "John") \(lastname ?? "John")."
            greetingMessage2.text = "You are \(age ?? "John" ) years old."
            
        }
        
        
    
    }

}

