//
//  FormViewController.swift
//  Class-05
//
//  Created by Jilamika on 6/7/2567 BE.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var textFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DetailViewController
        destination.detail = textFeild.text!
    }


}
