//
//  TitleHeaderTableViewCell.swift
//  SwiftCode
//
//  Created by Mallikarjun on 08/06/20.
//  Copyright © 2020 Mallikarjun. All rights reserved.
//

import UIKit

class TitleHeaderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var editLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
