//
//  GradeTableViewCell.swift
//  Class-6
//
//  Created by Jilamika on 6/7/2567 BE.
//

import UIKit

class GradeTableViewCell: UITableViewCell {

    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        gradeLabel.textColor = .red
        
        backgroundColor = .cyan
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
