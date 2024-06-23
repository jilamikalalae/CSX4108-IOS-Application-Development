//
//  ViewController.swift
//  Ocean Life
//
//  Created by Jilamika on 12/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalNameLabel: UILabel!
    
    
//    @IBOutlet var CrabImage: UIButton!
//    @IBOutlet var SeaOtterImage: UIButton!
//    @IBOutlet var TurtleImage: UIButton!
//    @IBOutlet var SharkImage: UIButton!
//    @IBOutlet var WhaleImage: UIButton!
//    @IBOutlet var SquidImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animalNameLabel.isHidden = true
       
    }
    
    @IBAction func tapCrabImage(_ sender: UITapGestureRecognizer) {
           showAnimalName(name: "Crab")
       }

       @IBAction func tapSharkImage(_ sender: UITapGestureRecognizer) {
           showAnimalName(name: "Shark")
       }

       @IBAction func tapWhaleImage(_ sender: UITapGestureRecognizer) {
           showAnimalName(name: "Whale")
       }
       
       @IBAction func tapOctopusImage(_ sender: UITapGestureRecognizer) {
           showAnimalName(name: "Octopus")
       }
       
       func showAnimalName(name: String) {
           animalNameLabel.text = name
           animalNameLabel.isHidden = false
       }

    
    

}

