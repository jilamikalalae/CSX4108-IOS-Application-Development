//
//  AppInfoTableViewCell.swift
//  PME-6511063
//
//  Created by Jilamika on 27/7/2567 BE.
//

import UIKit

class AppInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Picture: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var openingHRS: UILabel!
    @IBOutlet weak var avgPrice: UILabel!
    
    @IBOutlet weak var favorite: UIButton!
    
    @IBOutlet weak var someView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViewAppearance()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    private func setupViewAppearance() {
            // Set border radius for someView
            someView.layer.cornerRadius = 10
            someView.layer.masksToBounds = true
        
        // Configure Picture view
                Picture.contentMode = .scaleAspectFill
                Picture.clipsToBounds = true

                // Set fixed width and dynamic height
                Picture.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    Picture.widthAnchor.constraint(equalToConstant: 353), // Fixed width
                    Picture.heightAnchor.constraint(equalToConstant: 170) // Set your desired height
                ])
           
        }
}
