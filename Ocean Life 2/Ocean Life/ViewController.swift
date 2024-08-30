//
//  ViewController.swift
//  Ocean Life
//
//  Created by Jilamika on 12/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var answerLabel: UILabel!
    
    @IBOutlet var crabButton: UIButton!
    @IBOutlet var otterButton: UIButton!
    @IBOutlet var turtleButton: UIButton!
    @IBOutlet var sharkButton: UIButton!
    @IBOutlet var whaleButton: UIButton!
    @IBOutlet var squidButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func animalClicked(button: UIButton){
//        let id = button.tag
//        if id == 1 {
//            answerLabel.text = "Crab"
//        } else if id == 2 {
//            answerLabel.text = "Sea otter"
//        }
//        
        switch button.tag {
        case 1:
            answerLabel.text = "Crab"
        case 2:
            answerLabel.text = "Sea otter"
        case 3:
            answerLabel.text = "turtle"
        case 4:
            answerLabel.text = "shark"
        case 5:
            answerLabel.text = "Whale"
        case 6:
            answerLabel.text = "Squid"
        default:
            break
        }
    }

    
    
    
    

}

