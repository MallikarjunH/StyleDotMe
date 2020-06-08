//
//  VideoCollectionViewCell.swift
//  SwiftCode
//
//  Created by Mallikarjun on 08/06/20.
//  Copyright © 2020 Mallikarjun. All rights reserved.
//

import UIKit

class VideoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var videoImg: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    func fillDetails(_ image:String, _ title:String, _ time:String){
        
        videoImg.layer.cornerRadius = 5
        
        videoImg.image = UIImage(named: image)
        titleLabel.text = title
        timeLabel.text = time
    }
    
}
