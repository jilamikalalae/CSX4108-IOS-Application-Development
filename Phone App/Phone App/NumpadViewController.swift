//
//  NumpadViewController.swift
//  Phone App
//
//  Created by Jilamika on 11/7/2567 BE.
//

import UIKit

class NumpadViewController: UIViewController {

    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var AsteriskButton: UIButton!
    @IBOutlet weak var HashButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    
    
    
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var telLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        oneButton.layer.cornerRadius = oneButton.frame.height / 2
        oneButton.layer.masksToBounds = true
        
        twoButton.layer.cornerRadius = twoButton.frame.height / 2
        twoButton.layer.masksToBounds = true
        
        threeButton.layer.cornerRadius = threeButton.frame.height / 2
        threeButton.layer.masksToBounds = true
        
        fourButton.layer.cornerRadius = fourButton.frame.height / 2
        fourButton.layer.masksToBounds = true
        
        fiveButton.layer.cornerRadius = fiveButton.frame.height / 2
        fiveButton.layer.masksToBounds = true
        
        sixButton.layer.cornerRadius = sixButton.frame.height / 2
        sixButton.layer.masksToBounds = true
        
        sevenButton.layer.cornerRadius = sevenButton.frame.height / 2
        sevenButton.layer.masksToBounds = true
    
        eightButton.layer.cornerRadius = eightButton.frame.height / 2
        eightButton.layer.masksToBounds = true
        
        nineButton.layer.cornerRadius = nineButton.frame.height / 2
        nineButton.layer.masksToBounds = true
        
        zeroButton.layer.cornerRadius = zeroButton.frame.height / 2
        zeroButton.layer.masksToBounds = true
        
        
        AsteriskButton.layer.cornerRadius = AsteriskButton.frame.height / 2
        AsteriskButton.layer.masksToBounds = true
        
        HashButton.layer.cornerRadius = HashButton.frame.height / 2
        HashButton.layer.masksToBounds = true
        
        phoneButton.layer.cornerRadius = phoneButton.frame.height / 2
        phoneButton.layer.masksToBounds = true
        
    
//        telLabel.addTarget(self, action: #selector(numButtonClicked(_:)), for:.editingChanged)
        
    }
    @IBAction func numButtonClicked(button: UIButton){
        guard let currentText = telLabel.text else { return }

            switch button {
            case zeroButton:
                telLabel.text = currentText + "0"
            case oneButton:
                telLabel.text = currentText + "1"
            case twoButton:
                telLabel.text = currentText + "2"
            case threeButton:
                telLabel.text = currentText + "3"
            case fourButton:
                telLabel.text = currentText + "4"
            case fiveButton:
                telLabel.text = currentText + "5"
            case sixButton:
                telLabel.text = currentText + "6"
            case sevenButton:
                telLabel.text = currentText + "7"
            case eightButton:
                telLabel.text = currentText + "8"
            case nineButton:
                telLabel.text = currentText + "9"
            default:
                break
            }
        
        if let currentTel = telLabel.text{
            switch currentTel.count{
            case 4,8:
                let firstPart = currentTel.substring(to : currentTel.count - 1)
                let hypen = "-"
                let lastPart = currentTel.substring(from: currentTel.count - 1)
                
                telLabel.text = "\(firstPart)\(hypen)\(lastPart)"
            case 12:
                telLabel.resignFirstResponder()
                
            case 13...:
                telLabel.text = String(currentTel.prefix(12))
                telLabel.resignFirstResponder()
                
            default:
                break
            }
        
            
        }
    }
    
    
    @IBAction func deleteFunc(_ sender: Any) {
           guard var currentText = telLabel.text, !currentText.isEmpty else { return }
           currentText.removeLast()
           telLabel.text = currentText
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DetailViewController
        destination.detail = telLabel.text!
    }

    


}
