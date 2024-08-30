//
//  ViewController.swift
//  TextField Event Citizen ID
//
//  Created by Jilamika on 29/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CitizenNumberInput: UITextField!
    //the format => X-XXXX-XXXXX-XX-X
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CitizenNumberInput.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for:.editingChanged)
    }
    


    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        if let currentInput = CitizenNumberInput.text{
            switch currentInput.count{
            case 2, 7, 13, 16:
                let firstPart = currentInput.substring(to: currentInput.count - 1)
                let hypen = "-"
                let lastPart = currentInput.substring(from: currentInput.count - 1)

                CitizenNumberInput.text = "\(firstPart)\(hypen)\(lastPart)"
            case 17:
                CitizenNumberInput.resignFirstResponder()
            case 18...:
                CitizenNumberInput.text = String(currentInput.prefix(17))
                CitizenNumberInput.resignFirstResponder()
            default:
                break
            }
        }
        
//        if let currentInput = sender.text?.replacingOccurrences(of: "-", with: "") {
//                var formattedString = ""
//                
//                switch currentInput.count {
//                case 0...1: // X
//                    formattedString = currentInput
//                case 2: // X-X
//                    formattedString = "\(currentInput.prefix(1))-\(currentInput.suffix(1))"
//                case 3...5: // XXX -> X-XX
//                    formattedString = "\(currentInput.prefix(1))-\(currentInput.suffix(currentInput.count - 1))"
//                case 6: // X-XXXX-X
//                    formattedString = "\(currentInput.prefix(1))-\(currentInput.prefix(5).suffix(4))-\(currentInput.suffix(1))"
//                    //(currentInput.prefix(5).suffix(4))
//                    // prefix(5) -> ABCDE
//                    //.suffix(4) from the top -> BCDE
//                case 7...10: // X-XXXX-XX
//                    formattedString = "\(currentInput.prefix(1))-\(currentInput.prefix(5).suffix(4))-\(currentInput.suffix(currentInput.count - 5))"
//                    // (currentInput.suffix(currentInput.count - 5))
//                    // suffix(currentInput.count - 5 -> starting from 6
//                case 11: // X-XXXX-XXXXX-X
//                    formattedString = "\(currentInput.prefix(1))-\(currentInput.prefix(5).suffix(4))-\(currentInput.prefix(10).suffix(5))-\(currentInput.suffix(1))"
//                case 12...13: //X-XXXX-XXXXX-XXX
//                    formattedString = "\(currentInput.prefix(1))-\(currentInput.prefix(5).suffix(4))-\(currentInput.prefix(10).suffix(5))-\(currentInput.suffix(currentInput.count - 10))"
//                case 14: // X-XXXX-XXXXX-XX-X
//                    formattedString = "\(currentInput.prefix(1))-\(currentInput.prefix(5).suffix(4))-\(currentInput.prefix(10).suffix(5))-\(currentInput.suffix(4).prefix(2))-\(currentInput.suffix(1))"
//                default:
//                    formattedString = "\(currentInput.prefix(1))-\(currentInput.prefix(5).suffix(4))-\(currentInput.prefix(10).suffix(5))-\(currentInput.prefix(13).suffix(3))-\(currentInput.suffix(1))"
//                    CitizenNumberInput.resignFirstResponder()
//                }
//                
//                sender.text = formattedString
//            }
        
    }
}

