//
//  HomeViewController.swift
//  SwiftCode
//
//  Created by Mallikarjun on 08/06/20.
//  Copyright © 2020 Mallikarjun. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var msgButton: UIButton!
    
    let headerTitle:[String] = ["Video", "Review"]
    
    var displaySequence = [CellType]()
    
    var commentsArray:[String] = []
    
    enum CellType {
        case videos
        case comments
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        msgButton.layer.cornerRadius = 25
        displaySequence.append(.videos)
        displaySequence.append(.comments)
        
        commentsArray = [" With SmartTokens you can get your token on iOS and Android in real time without the need to build your own ethereum wallet.", "Visit TokenScript Documentation or see TokenScript Examples","Run natively inside the app and come with signed code to prevent tampering or phishing","“SmartTokens” are traditional fungible and non fungible tokens that are extended with business logic","We are committed to connecting businesses and consumers with the new digital economic infrastructure"]
        
        self.mainTableView.reloadData()
    }
    
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return 1
        }else{
            
            return commentsArray.count
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "VideosTableViewCell") as! VideosTableViewCell
            cell.fillDetails()
            return cell
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CommentsTableViewCell") as! CommentsTableViewCell
            cell.commentLabel.text = commentsArray[indexPath.row]
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TitleHeaderTableViewCell") as? TitleHeaderTableViewCell else {
            return UIView()
        }
        
        if section == 0 { //headerTitle
            
            cell.titleLabel.text = "\(headerTitle[section]) \u{2219} 9"
            cell.editLabel.isHidden = true
            return cell.contentView
        }
        else{
            cell.titleLabel.text = "\(headerTitle[section])"
            cell.editLabel.isHidden = false
            return cell.contentView
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 65
    }
    
    
}
