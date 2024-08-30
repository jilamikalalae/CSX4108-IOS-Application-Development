//
//  LocationListViewController.swift
//  self-study
//
//  Created by Jilamika on 17/8/2567 BE.
//

import UIKit

class LocationListViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    var abacLocationData: AbacLocationClass?
            
        override func viewDidLoad() {
            super.viewDidLoad()
            tableview.delegate = self 
            tableview.dataSource = self
            
            // Load JSON data
            abacLocationData = readJSONFile(named: "abacLocation", withExtension: "json")
        }
        
        func readJSONFile(named fileName: String, withExtension fileExtension: String) -> AbacLocationClass? {
            if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
                do {
                    let data = try Data(contentsOf: fileURL)
                    let decodedData = try JSONDecoder().decode(AbacLocationClass.self, from: data)
                    return decodedData
                } catch {
                    print("Error reading or decoding file: \(error.localizedDescription)")
                }
            } else {
                print("File not found.")
            }
            return nil
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return abacLocationData?.abacPlace.count ?? 0
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LocationListTableViewCell
            
            if let abacPlace = abacLocationData?.abacPlace[indexPath.row] {
                cell.facultyName.text = abacPlace.FacultyName
                cell.Abbreviation.text = abacPlace.Abbreviation
                cell.logo.image = UIImage(named: abacPlace.ImageLogoName)
            }
            
            return cell
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}
