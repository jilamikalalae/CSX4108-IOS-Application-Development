//
//  ViewController.swift
//  Quiz 1
//
//  Created by Jilamika on 15/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var desc: UILabel!
    @IBOutlet var image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ClickMeRandom(button: UIButton){
       
        let i = [(#imageLiteral(resourceName: "crab.jpeg"),"Crab"),(#imageLiteral(resourceName: "seaOtter.jpeg"),"Sea Otter"), (#imageLiteral(resourceName: "shark.jpeg"),"Shark"), (#imageLiteral(resourceName: "squid.jpeg"),"Squid"), (#imageLiteral(resourceName: "turtle.jpeg"),"Turtle"), (#imageLiteral(resourceName: "whale.jpeg"),"Whale")].randomElement()
        
        desc.text = i?.1
        image.image = i?.0
//        switch button.tag {
//        case 1:
//            desc.text = "crab"
//
//        case 2:
//            desc.text = "otter"
//        case 3:
//            desc.text = "turtle"
//        case 4:
//            desc.text = "shark"
//        case 5:
//            desc.text = "whale"
//        case 6:
//            desc.text = "squid"
//        default:
//            break
//        }
        
    }

}

