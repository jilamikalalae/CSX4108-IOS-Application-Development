//
//  moreInfoViewController.swift
//  PME-6511063
//
//  Created by Jilamika on 27/7/2567 BE.
//

import UIKit

class moreInfoViewController: UIViewController {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var priceAVG: UILabel!
    @IBOutlet weak var descript: UILabel!
    
    var RestaurantName: String?
    var RestaurantAddress: String?
    var RestaurantRating: Double?
    var RestaurantDescription: String?
    
    var RestaurantOpening: String?
    var RestaurantPrice: String?
    
    var appPhoto: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = RestaurantName
        address.text = RestaurantAddress
        rating.text = RestaurantRating != nil ? String(format: "%.1f", RestaurantRating!) : "N/A"
        descript.text = RestaurantDescription
        

        time.text = RestaurantOpening
        priceAVG.text = RestaurantPrice
    }
    

   
}
