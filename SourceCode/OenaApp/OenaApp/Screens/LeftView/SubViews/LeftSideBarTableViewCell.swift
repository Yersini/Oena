//
//  LeftSideBarTableViewCell.swift
//  OenaApp
//
//  Created by yersini on 6/27/16.
//  Copyright © 2016 Josky. All rights reserved.
//

import UIKit

class LeftSideBarTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
