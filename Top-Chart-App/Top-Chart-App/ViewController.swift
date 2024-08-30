//
//  ViewController.swift
//  Top-Chart-App
//
//  Created by Pattiya Yiadram on 13/7/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var AppInfo: AppInfo?
    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topTenApps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell") as! AppTableViewCell
        
        cell.appIcon.image = UIImage(named: topTenApps[indexPath.row].appIcon)
        cell.appName.text = topTenApps[indexPath.row].appName
        cell.appDescription.text = topTenApps[indexPath.row].shortDescription
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Click \(indexPath.row)")
        print(topTenApps[indexPath.row].appIcon)
        
        if let appDetailPage = storyboard?.instantiateViewController(withIdentifier: "appDetail") as? AppDetailViewController {
                   let selectedApp = topTenApps[indexPath.row]
                   
            appDetailPage.appImage = selectedApp.appIcon
            appDetailPage.appTitle = selectedApp.appName
            appDetailPage.appDetail = selectedApp.shortDescription
            appDetailPage.appRate = String(selectedApp.rating)
            appDetailPage.age = selectedApp.age
            appDetailPage.appChart = String(selectedApp.topChartPosition)
            appDetailPage.appDetailDescription = selectedApp.detailedDescription
            appDetailPage.appPhotos = selectedApp.screenshotGallery
            navigationController?.pushViewController(appDetailPage, animated: true)
            
               } else {
                   print("Error: Unable to instantiate view controller with identifier 'appDetail'")
               }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        tableview.delegate = self
        tableview.dataSource = self
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }

    override func viewIsAppearing(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    

}

