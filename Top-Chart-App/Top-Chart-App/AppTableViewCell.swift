//
//  AppTableViewCell.swift
//  Top-Chart-App
//
//  Created by Pattiya Yiadram on 14/7/24.
//

import UIKit

class AppTableViewCell: UITableViewCell {


    @IBOutlet weak var appIcon: UIImageView!
    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var appDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        appIcon.layer.cornerRadius = 15
    }

}
