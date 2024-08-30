//
//  PlanetViewController.swift
//  Our Plannet
//
//  Created by Jilamika on 24/8/2567 BE.
//

import UIKit

class PlanetViewController: UIViewController {
    var planetImageName: String?
    var planetNameText: String?

    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetName: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let planetImageName = planetImageName {
            planetImage.image = UIImage(named: planetImageName)
        }
            planetName.text = planetNameText
    }
    

   


}
