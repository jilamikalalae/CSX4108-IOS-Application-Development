//
//  ViewController.swift
//  Basic Info with UserDefault
//
//  Created by Jilamika on 13/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let name = UserDefaults.standard.string(forKey: "name") {
            nameInput.text = name
        }
        
        if let age = UserDefaults.standard.string(forKey: "age") {
            ageInput.text = age
        }
        
        if let email = UserDefaults.standard.string(forKey: "email") {
            emailInput.text = email
        }
        
    }

    @IBAction func saveButtonClicked(_ sender: Any) {
        
        let name = nameInput.text ?? ""
        let age = ageInput.text ?? ""
        let email = emailInput.text ?? ""
        
        UserDefaults.standard.setValue(name, forKey: "name") // save the data in to this key
        UserDefaults.standard.setValue(age, forKey: "age")
        UserDefaults.standard.setValue(email, forKey: "email")
        
        let alert = UIAlertController(title: "Hi, there 🎀",
                                      message: "Your information is saved",
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
//        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive)) // negative or dangerous action
//        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
//        
        present(alert, animated: true) // alert would pop up from this line
    }
    
    
    @IBAction func clearButtonClicked(_ sender: Any) {
        
        nameInput.text = ""
        ageInput.text = ""
        emailInput.text = ""
        
        UserDefaults.standard.removeObject(forKey: "name") //setValue("", forKey: "name")
        UserDefaults.standard.removeObject(forKey: "age")
        UserDefaults.standard.removeObject(forKey: "email")
        
    }
}

