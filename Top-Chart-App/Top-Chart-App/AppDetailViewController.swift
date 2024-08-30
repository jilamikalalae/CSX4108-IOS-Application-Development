//
//  AppDetailViewController.swift
//  Top-Chart-App
//
//  Created by Pattiya Yiadram on 14/7/24.
//

import UIKit

class AppDetailViewController: UIViewController {

    @IBOutlet weak var appLogo: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appDescriptionText: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    
    var appImage: String?
    var appTitle: String?
    var appDetail: String?
    
    @IBOutlet weak var rateNumber: UILabel!
    @IBOutlet weak var ageRange: UILabel!
    @IBOutlet weak var chartNumber: UILabel!
    
    var appRate: String?
    var age: String?
    var appChart : String?
    var appDetailDescription: String?
    var appPhotos : [String] = []
    
    @IBOutlet weak var longDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        appLogo.layer.cornerRadius = 15
        appLogo.image = UIImage(named: appImage ?? "")
        appNameLabel.text = appTitle
        appDescriptionText.text = appDetail
        
        rateNumber.text = appRate
        ageRange.text = age
        chartNumber.text = "#\(appChart ?? "#")"
        
        longDescriptionLabel.text = appDetailDescription
        
        navigationItem.title = appTitle
        navigationController?.navigationBar.prefersLargeTitles = false
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    stackView.heightAnchor.constraint(equalToConstant: 400) // Set desired height
                ])
                
                // Loop through the photos and add them to the stack view
                for photoName in appPhotos {
                    if let image = UIImage(named: photoName) {
                        let imageView = UIImageView(image: image)
                        imageView.contentMode = .scaleAspectFit
                        imageView.translatesAutoresizingMaskIntoConstraints = false
                        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true // Set desired width
                        imageView.heightAnchor.constraint(equalToConstant: 400).isActive = true // Set desired height
                        stackView.addArrangedSubview(imageView)
                    }
                }
                
                // Set the stack view's spacing
                stackView.spacing = 10
                
                // Enable horizontal scrolling
                scrollView.showsHorizontalScrollIndicator = false
                scrollView.isPagingEnabled = true
                
                // Update scroll view content size based on the number of images
                let contentWidth = (200 + 10) * appPhotos.count // image width + spacing
                scrollView.contentSize = CGSize(width: contentWidth, height: 400)
            }


    

}
