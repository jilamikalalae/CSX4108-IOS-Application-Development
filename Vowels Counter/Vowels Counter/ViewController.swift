//
//  ViewController.swift
//  Vowels Counter
//
//  Created by Jilamika on 5/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var ACountLabel: UILabel!
    @IBOutlet weak var ECountLabel: UILabel!
    @IBOutlet weak var ICountLabel: UILabel!
    @IBOutlet weak var OCountLabel: UILabel!
    @IBOutlet weak var UCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initial count labels setup
        updateVowelCounts()
    }
    
    @IBAction func textFieldDidChange(_ sender: UITextField) {
            updateVowelCounts()
        
        }

        func updateVowelCounts() {
            guard let text = inputTextField.text?.lowercased() else { return }

            var ACount = 0
            var ECount = 0
            var ICount = 0
            var OCount = 0
            var UCount = 0

            for char in text {
                switch char {
                case "a":
                    ACount += 1
                case "e":
                    ECount += 1
                case "i":
                    ICount += 1
                case "o":
                    OCount += 1
                case "u":
                    UCount += 1
                default:
                    break
                }
            }

            ACountLabel.text = "A : \(ACount)"
            ECountLabel.text = "E : \(ECount)"
            ICountLabel.text = "I : \(ICount)"
            OCountLabel.text = "O : \(OCount)"
            UCountLabel.text = "U : \(UCount)"
        }

   
}

