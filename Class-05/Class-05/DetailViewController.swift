//
//  DetailViewController.swift
//  Class-05
//
//  Created by Jilamika on 6/7/2567 BE.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    var detail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLabel.text = detail

    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    

}
