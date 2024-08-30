//
//  ThirdPageViewController.swift
//  Class-6
//
//  Created by Jilamika on 6/7/2567 BE.
//

import UIKit

class ThirdPageViewController: UIViewController {

    @IBOutlet weak var courseLabel: UILabel!
    
    var course: Course?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        courseLabel.text = course?.title
       
    }
    
    


}
