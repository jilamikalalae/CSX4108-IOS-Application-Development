//
//  ViewController.swift
//  AppStoreTopChart
//
//  Created by Jilamika on 19/7/2567 BE.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    var appInfos: [AppInfo] = []
    
    

    func readJSONFile(named fileName: String, withExtension fileExtension: String) -> [AppInfo] {
        // Locate the file in the bundle
        if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
            do {
                // Read the data from the file
                let data = try Data(contentsOf: fileURL)
                // Decode the data to the AppInfo struct
                let appInfo = try JSONDecoder().decode([AppInfo].self, from: data)
                return appInfo
            } catch {
                print("Error reading or decoding file: \(error.localizedDescription)")
            }
        } else {
            print("File not found.")
        }
        return []
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
//    var topTenApps: AppInfo?
            
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return appInfos.count
        }
            
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! AppInfoTableViewCell
            let app = appInfos[indexPath.row]
            print(app)
            
           
            
            cell.appIcon.image = UIImage(named: app.appIcon)
            cell.appName.text = app.appName
            cell.shortDescript.text = app.shortDescription
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 110
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("Click \(indexPath.row)")
            print(appInfos[indexPath.row].appIcon)
            
            if let appDetailPage = storyboard?.instantiateViewController(withIdentifier: "appDetail") as? SecondViewController {
                let selectedApp = appInfos[indexPath.row]
                
                appDetailPage.appIconName = selectedApp.appIcon
                appDetailPage.appNameText = selectedApp.appName
                appDetailPage.shortDescriptText = selectedApp.shortDescription
                appDetailPage.ratingText = String(selectedApp.rating)
                appDetailPage.ageText = selectedApp.age
                appDetailPage.chartText = String(selectedApp.topChartPosition)
                appDetailPage.detailText = selectedApp.detailedDescription
                appDetailPage.appPhoto = selectedApp.screenshotGallery
                navigationController?.pushViewController(appDetailPage, animated: true)
            } else {
                print("Error: Unable to instantiate view controller with identifier 'appDetail'")
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appInfos = readJSONFile(named: "appInfo", withExtension: "json")
        
//        let appearance = UINavigationBarAppearance()
        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        tableView.delegate = self
        tableView.dataSource = self
        
//            print(topTenApps)

        // Register cell identifier if not using storyboard
//          tableView.register(AppInfoTableViewCell.self, forCellReuseIdentifier: "cell")

    }
    
    
    
}



