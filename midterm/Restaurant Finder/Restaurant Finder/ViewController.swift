//
//  ViewController.swift
//  Restaurant Finder
//
//  Created by Kiratijuta Bhumichitr on 10/8/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! // Ensure this outlet is connected in your storyboard
    
    var restaurants: [Restaurant] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let result = readJSONFile(named: "Restaurants", withExtension: "json") {
            restaurants = result.restaurants
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Reload the table view to ensure all cells are updated
        tableView.reloadData()
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

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
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
        
        // Update the HeartImage based on favorite status
        let isFavorite = FAV_RESTAURANTS.contains(restaurant.name)
        let heartImageName = isFavorite ? "heart.fill" : "heart"
        cell.HeartImage.image = UIImage(systemName: heartImageName)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailScene = storyboard?.instantiateViewController(identifier: "detailviewcontroller") as! DetailViewController
        detailScene.restaurant = restaurants[indexPath.row]
        
        navigationController?.pushViewController(detailScene, animated: true)
    }
}
