//
//  ViewController.swift
//  StudentInfo
//
//  Created by Jilamika on 13/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    var students: StudentList? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        students = readJSONFile(named: "Students", withExtension: "json")
        
        
    }
    
    func readJSONFile(named fileName: String, withExtension fileExtension: String) -> StudentList? {
        // Locate the file in the bundle
        if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
            do {
                // Read the data from the file
                let data = try Data(contentsOf: fileURL)
                // Decode the data to the AppInfo struct
                let appInfo = try JSONDecoder().decode(StudentList.self, from: data)
                return appInfo
            } catch {
                print("Error reading or decoding file: \(error.localizedDescription)")
            }
        } else {
            print("File not found.")
        }
        return nil
    }
}

    extension ViewController: UITableViewDelegate, UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return students?.students.count ?? 0
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let index = indexPath.row
            
            let cell = UITableViewCell()
            let message = "\(students!.students[index].name)(\(students!.students[index].age)years old) \(students!.students[index].address.province) - \(students!.uni) "
            cell.textLabel?.text = message
            
            return cell
        }
        
        
    }



