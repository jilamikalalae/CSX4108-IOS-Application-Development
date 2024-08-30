//
//  ViewController.swift
//  Our Plannet
//
//  Created by Thanatuch Lertritsirikul on 24/8/24.
//

import UIKit

class ViewController: UIViewController {
    var products: [(img: String,name: String)] = [] // () tuple of string
    
    var bools: [Bool] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        products.append(("earth", "Earth"))
        products.append(("mars", "Mars"))
        products.append(("venus", "Venus"))
        products.append(("saturn", "Saturn"))
        products.append(("jupiter", "Jupiter"))
        products.append(("mercury", "Mercury"))
        products.append(("uranus", "Uranus"))
        products.append(("neptune", "Neptune"))
        
        
    
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let itemIndex = indexPath.item
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "planet_item" ,
                                                      for: indexPath) as! PlanetCell
        
        cell.planetImageView.image = UIImage(named: products[itemIndex].img)
        cell.planetName.text =  products[itemIndex].name
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Click \(indexPath.row)")
        let selectedProduct = products[indexPath.item]
        print(selectedProduct)
            
        if let planetVC = storyboard?.instantiateViewController(withIdentifier: "planet") as? PlanetViewController {
            print(planetVC)
            planetVC.planetImageName = selectedProduct.img
            planetVC.planetNameText = selectedProduct.name
            navigationController?.pushViewController(planetVC, animated: true)
        }else {
            print("Error: Unable to instantiate view controller with identifier 'appDetail'")
        }
    }
    
    
}

