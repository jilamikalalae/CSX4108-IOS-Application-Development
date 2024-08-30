//
//  SecondViewController.swift
//  AppStoreTopChart
//
//  Created by Jilamika on 19/7/2567 BE.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var appIcon: UIImageView!
    @IBOutlet weak var shortDescript: UILabel!
    
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var chart: UILabel!
    @IBOutlet weak var detail: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    
    var appIconName: String?
    var appNameText: String?
    var shortDescriptText: String?
    
    var ratingText: String?
    var ageText: String?
    var chartText: String?
    var detailText: String?
    
    var appPhoto: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appIcon.layer.cornerRadius = 15
        
        if let icon = appIconName {
            appIcon.image = UIImage(named: icon)
        }
        appName.text = appNameText
        shortDescript.text = shortDescriptText
        rating.text = ratingText
        
        
        age.text = ageText
        chart.text = "#\(chartText ?? "#")"
        detail.text = detailText
        
        navigationItem.title = appNameText
        navigationController?.navigationBar.prefersLargeTitles = false
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               stackView.heightAnchor.constraint(equalToConstant: 400) // Set desired height
           ])
           
           // Loop through the photos and add them to the stack view
           for photoName in appPhoto {
               if let image = UIImage(named: photoName) {
                   let imageView = UIImageView(image: image)
                   imageView.contentMode = .scaleAspectFit
                   imageView.translatesAutoresizingMaskIntoConstraints = false
                   imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true // Set desired width
                   imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true // Set desired height
                   stackView.addArrangedSubview(imageView)
               }
           }
           
           // Set the stack view's spacing
           stackView.spacing = 10
           
           // Enable horizontal scrolling
           scrollView.showsHorizontalScrollIndicator = false
           scrollView.isPagingEnabled = true
           
           // Update scroll view content size based on the number of images
           let contentWidth = (200 + 10) * appPhoto.count // image width + spacing
           scrollView.contentSize = CGSize(width: contentWidth, height: 300) // Fixed height


    
    }
    
    


}
