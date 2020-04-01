//
//  UserTableViewCell.swift
//  JenkinsFastlane
//
//  Created by Gyorgy Borz on 2020. 04. 01..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
