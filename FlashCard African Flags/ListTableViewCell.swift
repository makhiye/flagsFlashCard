//
//  ListTableViewCell.swift
//  FlashCard African Flags
//
//  Created by ishmael on 7/17/17.
//  Copyright © 2017 ishmael.mthombeni. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var flagImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    
    
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
