//
//  VideosTableViewCell.swift
//  SwiftCode
//
//  Created by Mallikarjun on 08/06/20.
//  Copyright © 2020 Mallikarjun. All rights reserved.
//

import UIKit

class VideosTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    var titleArray:[String] = []
    var timeLabel:[String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle =  .none
        
        titleArray = ["The Seven Samurai 2007","Airplane 1998","Pan's Labyrinth 2001","The Deer Hunter 1992","Up 2019"]
        
        timeLabel = ["1 Year ago \u{2219} 5313 Play","1 Week ago \u{2219} 9828 Play","2 Days ago \u{2219} 63 Play","6 Months ago \u{2219} 34329 Play", " 2 weeks ago \u{2219} 831 Play" ]
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func fillDetails() {
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.reloadData()
    }
    
}

extension VideosTableViewCell:UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320, height: 230)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let title = self.titleArray[indexPath.row]
        let time = self.timeLabel[indexPath.row]
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideoCollectionViewCell", for: indexPath) as? VideoCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.fillDetails(title, title, time)
        return cell
        
    }
    
}


