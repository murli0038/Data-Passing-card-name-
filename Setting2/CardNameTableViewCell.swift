//
//  CardNameTableViewCell.swift
//  Setting2
//
//  Created by Nikunj Prajapati on 20/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class CardNameTableViewCell: UITableViewCell
{
    
    @IBOutlet weak var CardImageView: UIImageView!
    @IBOutlet weak var CardName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
