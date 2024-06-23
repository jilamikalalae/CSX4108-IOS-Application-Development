//
//  ViewController.swift
//  First App
//
//  Created by Jilamika on 8/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingMessage: UILabel!
    @IBOutlet var nameInput: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func clickMeButtonClicked() {
        let name = nameInput.text
        
        if name != ""{
            
            greetingMessage.text = "Hello \(name!)"
            greetingMessage.textColor = #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)
        }
    }


}

