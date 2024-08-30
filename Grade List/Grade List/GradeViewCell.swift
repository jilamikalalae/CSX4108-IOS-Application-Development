//
//  GradeViewCell.swift
//  Grade List
//
//  Created by Jilamika on 18/8/2567 BE.
//

import UIKit

class GradeViewCell: UITableViewCell {

    @IBOutlet weak var courseCode: UILabel!
    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var credit: UILabel!
    @IBOutlet weak var grade: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
