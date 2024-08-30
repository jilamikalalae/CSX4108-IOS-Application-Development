//
//  AppInfoTableViewCell.swift
//  AppStoreTopChart
//
//  Created by Jilamika on 19/7/2567 BE.
//

import UIKit

class AppInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var shortDescript: UILabel!
    @IBOutlet weak var appIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        appIcon.layer.cornerRadius = 15
        
    }

}
