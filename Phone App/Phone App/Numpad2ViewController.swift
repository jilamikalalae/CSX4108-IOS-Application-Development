//
//  Numpad2ViewController.swift
//  Phone App
//
//  Created by Jilamika on 11/7/2567 BE.
//

import UIKit

class Numpad2ViewController: UIViewController {

    @IBOutlet weak var LabelOne: UILabel!
    @IBOutlet weak var LabelTwo: UILabel!
    @IBOutlet weak var LabelThree: UILabel!
    @IBOutlet weak var LabelFour: UILabel!
    @IBOutlet weak var LabelFive: UILabel!
    @IBOutlet weak var LabelSix: UILabel!
    @IBOutlet weak var LabelSeven: UILabel!
    @IBOutlet weak var LabelEight: UILabel!
    @IBOutlet weak var Labelnine: UILabel!
    @IBOutlet weak var LabelZero: UILabel!
    
    @IBOutlet weak var LabelAsterisk: UILabel!
    @IBOutlet weak var LabelHash: UILabel!
    @IBOutlet weak var LabelPhone: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LabelOne.layer.cornerRadius = LabelOne.frame.height / 2
        LabelOne.layer.masksToBounds = true
        
        LabelTwo.layer.cornerRadius = LabelTwo.frame.height / 2
        LabelTwo.layer.masksToBounds = true
        
        LabelThree.layer.cornerRadius = LabelThree.frame.height / 2
        LabelThree.layer.masksToBounds = true
        
        LabelFour.layer.cornerRadius = LabelFour.frame.height / 2
        LabelFour.layer.masksToBounds = true
        
        LabelFive.layer.cornerRadius = LabelFive.frame.height / 2
        LabelFive.layer.masksToBounds = true
        
        LabelSix.layer.cornerRadius = LabelSix.frame.height / 2
        LabelSix.layer.masksToBounds = true
        
        LabelSeven.layer.cornerRadius = LabelSeven.frame.height / 2
        LabelSeven.layer.masksToBounds = true
        
        LabelEight.layer.cornerRadius = LabelEight.frame.height / 2
        LabelEight.layer.masksToBounds = true
        
        Labelnine.layer.cornerRadius = Labelnine.frame.height / 2
        Labelnine.layer.masksToBounds = true
        
        LabelZero.layer.cornerRadius = LabelZero.frame.height / 2
        LabelZero.layer.masksToBounds = true
        
        
        
        LabelAsterisk.layer.cornerRadius = LabelAsterisk.frame.height / 2
        LabelAsterisk.layer.masksToBounds = true
        
        LabelHash.layer.cornerRadius = LabelHash.frame.height / 2
        LabelHash.layer.masksToBounds = true
        
        LabelPhone.layer.cornerRadius = LabelPhone.frame.height / 2
        LabelPhone.layer.masksToBounds = true
    }
    

    
}
