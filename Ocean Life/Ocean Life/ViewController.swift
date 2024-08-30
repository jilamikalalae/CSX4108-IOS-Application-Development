//
//  ViewController.swift
//  Ocean Life
//
//  Created by Jilamika on 12/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var crabImage: UIImageView!
    @IBOutlet weak var otterImage: UIImageView!
    @IBOutlet weak var turtleImage: UIImageView!
    @IBOutlet weak var sharkImage: UIImageView!
    @IBOutlet weak var whaleImage: UIImageView!
    @IBOutlet weak var squidImage: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        crabImage.isUserInteractionEnabled = true
        otterImage.isUserInteractionEnabled = true
        turtleImage.isUserInteractionEnabled = true
        sharkImage.isUserInteractionEnabled = true
        whaleImage.isUserInteractionEnabled = true
        squidImage.isUserInteractionEnabled = true
        
        let tapRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(answer(_:)))
        let tapRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(answer(_:)))
        let tapRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(answer(_:)))
        let tapRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(answer(_:)))
        let tapRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(answer(_:)))
        let tapRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(answer(_:)))
        
        
        tapRecognizer1.numberOfTapsRequired = 1
        tapRecognizer2.numberOfTapsRequired = 1
        tapRecognizer3.numberOfTapsRequired = 1
        tapRecognizer4.numberOfTapsRequired = 1
        tapRecognizer5.numberOfTapsRequired = 1
        tapRecognizer6.numberOfTapsRequired = 1
        
        crabImage.addGestureRecognizer(tapRecognizer1)
        otterImage.addGestureRecognizer(tapRecognizer2)
        turtleImage.addGestureRecognizer(tapRecognizer3)
        sharkImage.addGestureRecognizer(tapRecognizer4)
        whaleImage.addGestureRecognizer(tapRecognizer5)
        squidImage.addGestureRecognizer(tapRecognizer6)
        
        

    }

    @objc func answer(_ sender: UITapGestureRecognizer){
        
        var descrip = ""
        
        if sender.view is UIImageView{
            
            switch sender.view {
            case crabImage:
                descrip = "Crab🦀"
            case otterImage:
                descrip = "Sea Otter🦭"
            case turtleImage:
                descrip = "Turtle🐢"
            case sharkImage:
                descrip = "Shark🦈"
            case whaleImage:
                descrip = "Whale🐋"
            case squidImage:
                descrip = "Squid🐙"
            default:
                break
                
            }
        }
        
        answerLabel.text = descrip
    }
    
    
    

}

