//
//  ViewController.swift
//  Class-6
//
//  Created by Jilamika on 6/7/2567 BE.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    let courses: [Course] = [Course(title: "English 1", grade: "A"), Course(title: "iOS Development", grade: "A"), Course(title: "Business Intelligence", grade: "B"), Course(title:"User Interface", grade: "C")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell") as! GradeTableViewCell
//        cell?.textLabel?.text = "Movie \(indexPath.row)"
//        cell?.imageView?.image = .checkmark --> as! GradeTableViewCell
        cell.courseLabel.text = courses[indexPath.row].title
        cell.gradeLabel.text = courses[indexPath.row].grade
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("click \(indexPath.row)")
        let thirdPage = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "thirdpage") as! ThirdPageViewController
        thirdPage.course = courses[indexPath.row]
        navigationController?.pushViewController(thirdPage, animated: true)
    }

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemPink
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: .add, style: .plain , target: self , action:#selector(addClicked))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editClicked))
        
        tableview.delegate = self
        tableview.dataSource = self
        tableview.contentInset = UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0)
        tableview.separatorStyle = .none
        
    }
    
    
    
    @objc func addClicked() {
        let thirdPage = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "thirdpage") as! ThirdPageViewController
        navigationController?.pushViewController(thirdPage, animated: true)
        
    }
    
    @objc func editClicked() {
        
    }


    @IBAction func nextClicked(_ sender: UIButton) {
        let secondPage = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(identifier: "secondpage") as! SecondPageViewController
        
        navigationController?.pushViewController(secondPage, animated: true)
        
    }
}

