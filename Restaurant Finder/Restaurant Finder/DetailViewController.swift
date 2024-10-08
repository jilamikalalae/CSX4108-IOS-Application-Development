//
//  DetailViewController.swift
//  Restaurant Finder
//
//  Created by Kiratijuta Bhumichitr on 10/8/2567 BE.
//

import UIKit

var FAV_RESTAURANTS: [String] = []

class DetailViewController: UIViewController {
    
    var restaurant: Restaurant? = nil
    
    @IBOutlet var displayImage: UIImageView!
    @IBOutlet var displayName: UILabel!
    @IBOutlet var displayLocation: UILabel!
    @IBOutlet var displayRating: UILabel!
    @IBOutlet var displayTime: UILabel!
    @IBOutlet var displayPrice: UILabel!
    @IBOutlet var displayDescription: UILabel!
    
    @IBOutlet var favoriteButton: UIButton!
    
    @IBOutlet var start1: UIImageView!
    @IBOutlet var start2: UIImageView!
    @IBOutlet var start3: UIImageView!
    @IBOutlet var start4: UIImageView!
    @IBOutlet var start5: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let restaurant = restaurant {
            displayName.text = restaurant.name
            displayLocation.text = restaurant.location
            displayRating.text = "\(restaurant.rating)"
            displayTime.text = restaurant.openingTime
            displayPrice.text = restaurant.price
            displayImage.image = UIImage(named: restaurant.images[0])
            displayDescription.text = restaurant.description
            displayStars(numberOfRating: restaurant.rating)
        }
    }
    
    func displayStars(numberOfRating: Double) {
        start1.isHidden = true
        start2.isHidden = true
        start3.isHidden = true
        start4.isHidden = true
        start5.isHidden = true
        
        if numberOfRating >= 1 {
            start1.isHidden = false
        }
        if numberOfRating >= 2 {
            start2.isHidden = false
        }
        if numberOfRating >= 3 {
            start3.isHidden = false
        }
        if numberOfRating >= 4 {
            start4.isHidden = false
        }
        if numberOfRating >= 5 {
            start5.isHidden = false
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        // Ensure button state is updated when the view appears
//        if let restaurant = restaurant {
//            if FAV_RESTAURANTS.contains(restaurant.name) {
//                favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
//            } else {
//                favoriteButton.setImage(UIImage(systemName: "heart"), for: .normal)
//            }
//        }
        
        super.viewWillAppear(animated)
            
            if let restaurant = restaurant {
                if FAV_RESTAURANTS.contains(restaurant.name) {
                    favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                } else {
                    favoriteButton.setImage(UIImage(systemName: "heart"), for: .normal)
                }
            }
    }

    
    
    @IBAction func favoriteClick() {
        
//        favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
//        
//        if let restaurant = restaurant {
//            FAV_RESTAURANTS.append(restaurant.name)
//            favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
//        }
        if let restaurant = restaurant {
                if FAV_RESTAURANTS.contains(restaurant.name) {
                    FAV_RESTAURANTS.removeAll { $0 == restaurant.name }
                    favoriteButton.setImage(UIImage(systemName: "heart"), for: .normal)
                } else {
                    FAV_RESTAURANTS.append(restaurant.name)
                    favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                }
                // Notify that the favorites list has been updated
                NotificationCenter.default.post(name: NSNotification.Name("FavoritesUpdated"), object: nil)
            }
    }
    
}
