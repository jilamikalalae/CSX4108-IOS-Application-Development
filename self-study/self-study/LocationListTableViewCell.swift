//
//  LocationListTableViewCell.swift
//  self-study
//
//  Created by Jilamika on 17/8/2567 BE.
//

import UIKit

class LocationListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var facultyName: UILabel!
    @IBOutlet weak var Abbreviation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }

}
