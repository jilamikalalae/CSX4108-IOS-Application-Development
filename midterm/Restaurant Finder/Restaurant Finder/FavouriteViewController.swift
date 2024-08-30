//
//  FavouriteViewController.swift
//  Restaurant Finder
//
//  Created by Kiratijuta Bhumichitr on 10/8/2567 BE.
//
 
import UIKit

class FavouriteViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var restaurants: [Restaurant] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let result = readJSONFile(named: "Restaurants", withExtension: "json") {
            restaurants = result.restaurants
            
            // Filter the restaurants based on favorite status
            restaurants = restaurants.filter { r in
                // Check if the restaurant's name exists in FAV_RESTAURANTS
                return FAV_RESTAURANTS.contains(r.name)
            }
            
            tableView.reloadData() // Reload the table view to reflect the changes
        }
    }

    func readJSONFile(named fileName: String, withExtension fileExtension: String) -> RestaurantClass? {
        // Locate the file in the bundle
        if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
            do {
                // Read the data from the file
                let data = try Data(contentsOf: fileURL)
                // Decode the data to the RestaurantClass
                let restaurantClass = try JSONDecoder().decode(RestaurantClass.self, from: data)
                return restaurantClass
            } catch {
                print("Error reading or decoding file: \(error.localizedDescription)")
            }
        } else {
            print("File not found.")
        }
        return nil
    }
}

extension FavouriteViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let i = indexPath.row
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantcell") as! RestaurantCell
        let restaurant = restaurants[i]
        
        cell.displayName.text = restaurant.name
        cell.displayLocation.text = restaurant.location
        cell.displayRating.text = "\(restaurant.rating)"
        cell.displayTime.text = restaurant.openingTime
        cell.displayPrice.text = restaurant.price
        cell.displayImage.image = UIImage(named: restaurant.images[0])
        cell.displayStars(numberOfRating: restaurant.rating)
        
        // Since this is the favorites list, show the filled heart icon
        cell.displayHeart.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailScene = storyboard?.instantiateViewController(identifier: "detailviewcontroller") as! DetailViewController
        detailScene.restaurant = restaurants[indexPath.row]
        
        navigationController?.pushViewController(detailScene, animated: true)
    }
}
