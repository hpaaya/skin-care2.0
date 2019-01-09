//
//  cosmeticTableViewCell.swift
//  skin care
//
//  Created by User14 on 2019/1/9.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class cosmeticTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
