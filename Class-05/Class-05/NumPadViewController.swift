//
//  NumPadViewController.swift
//  Class-05
//
//  Created by Jilamika on 6/7/2567 BE.
//

import UIKit

class NumPadViewController: UIViewController {
    
    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        oneLabel.layer.cornerRadius = oneLabel.frame.height / 2
        oneLabel.layer.masksToBounds = true
        
        secondLabel.layer.cornerRadius = secondLabel.frame.height / 2
        secondLabel.layer.masksToBounds = true
        
        thirdLabel.layer.cornerRadius = thirdLabel.frame.height / 2
        thirdLabel.layer.masksToBounds = true
        
       
    }
    

}
