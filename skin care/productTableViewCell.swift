//
//  productTableViewCell.swift
//  skin care
//
//  Created by User14 on 2019/1/3.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class productTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
