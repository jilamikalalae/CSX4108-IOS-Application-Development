//
//  ViewController.swift
//  Grade List
//
//  Created by Jilamika on 18/8/2567 BE.
//

import UIKit
import Alamofire

struct john: Codable {
    var name: String
    var grades: [GradeList]
}

struct GradeList: Codable {
    var code: String
    var credit: Double
    var name: String
    var grade: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
//    var grade: john? = john(
//        name: "John",
//        grades: [
//           GradeList(
//            code: "CSX3004", credit: 3.0, name: "pro lang", grade: "B"
//           ),
//           GradeList(
//            code: "CSX3004", credit: 3.0, name: "pro lang", grade: "B"
//           )
//           
//        ]
//    )
    var grade: john? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AF.request("https://dl.dropboxusercontent.com/s/nsicnigp0xc8dxz/grades.json").responseDecodable(of: john.self ) { data in
            switch data.result {
            case .success(let grade):
                self.grade = grade
                self.tableView.reloadData()
                
            case .failure(let error):
                print("yo", error)
            }
            
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grade?.grades.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! GradeViewCell
        if let grade = grade {
            cell.courseCode.text = grade.grades[indexPath.row].code
            cell.credit.text = String(grade.grades[indexPath.row].credit)
            cell.subject.text = grade.grades[indexPath.row].name
            cell.grade.text = grade.grades[indexPath.row].grade
        }

        
        return cell
    }
    
    

}

