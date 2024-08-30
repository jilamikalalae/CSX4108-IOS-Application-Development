//
//  AppInfoTableViewCell.swift
//  App Store Top Chart App
//
//  Created by Jilamika on 19/7/2567 BE.
//

import UIKit

class AppInfoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var appName: UILabel!
    
    @IBOutlet weak var shortDescript: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
