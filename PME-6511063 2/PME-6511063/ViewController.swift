//
//  ViewController.swift
//  PME-6511063
//
//  Created by Jilamika on 27/7/2567 BE.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var appInfos: AppInfo? = nil
    
    func readJSONFile(named fileName: String, withExtension fileExtension: String) -> AppInfo? {
        // Locate the file in the bundle
        if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
            do {
                // Read the data from the file
                let data = try Data(contentsOf: fileURL)
                // Decode the data to the AppInfo struct
                let appInfo = try JSONDecoder().decode(AppInfo?.self, from: data)
                return appInfo
            } catch {
                print("Error reading or decoding file: \(error.localizedDescription)")
            }
        } else {
            print("File not found.")
        }
        return nil
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemPink
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        // Apply the appearance to both standard and scrollEdge
                if #available(iOS 15.0, *) {
                    navigationController?.navigationBar.standardAppearance = appearance
                    navigationController?.navigationBar.scrollEdgeAppearance = appearance
                } else {
                    navigationController?.navigationBar.barTintColor = .systemPink
                    navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
                    navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                }
        
        appInfos = readJSONFile(named: "Restaurants", withExtension: "json")
        tableView.delegate = self
        tableView.dataSource = self
        
       
    }
    
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10 // Adjust based on your spacing needs
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appInfos?.restaurant.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! AppInfoTableViewCell
        let restaurant = appInfos?.restaurant[indexPath.row]
        
//        cell.Picture.frame = cell.someView.bounds
//        cell.Picture.autoresizingMask = [.flexibleWidth]
    
            let padding: CGFloat = 10
            cell.contentView.frame = cell.contentView.frame.inset(by: UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding))
                
                if let firstImage = restaurant?.images.first {
                    cell.Picture.image = UIImage(named: firstImage)
                } else {
                    cell.Picture.image = nil
                }
                
                cell.name.text = restaurant?.name
                cell.address.text = restaurant?.location
                cell.rating.text = String(format: "%.1f", restaurant?.rating ?? 0.0)
                cell.openingHRS.text = restaurant?.openingTime
                cell.avgPrice.text = restaurant?.price
            
                print(cell)
                return cell
                
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Click \(indexPath.row)")
//        print(appInfos?.restaurant[indexPath.row].)
        
        if let appDetailPage = storyboard?.instantiateViewController(withIdentifier: "appDetail") as? moreInfoViewController {
            let selectedApp = appInfos?.restaurant[indexPath.row]
            
            appDetailPage.RestaurantName = selectedApp?.name
            appDetailPage.RestaurantAddress = selectedApp?.location
            appDetailPage.RestaurantRating = selectedApp?.rating
            appDetailPage.RestaurantDescription = selectedApp?.descript
            appDetailPage.RestaurantOpening = selectedApp?.openingTime
            appDetailPage.RestaurantPrice = selectedApp?.price
            navigationController?.pushViewController(appDetailPage, animated: true)
        } else {
            print("Error: Unable to instantiate view controller with identifier 'appDetail'")
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 268
    }

}

