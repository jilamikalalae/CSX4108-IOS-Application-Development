//
//  DetailViewController.swift
//  Phone App
//
//  Created by Jilamika on 12/7/2567 BE.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var phoneButton: UIButton!
    
    var detail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLabel.text = detail
        
        phoneButton.layer.cornerRadius = phoneButton.frame.height / 2
        phoneButton.layer.masksToBounds = true

    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

    

}
