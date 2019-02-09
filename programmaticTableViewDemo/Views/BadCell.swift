//
//  MyCell.swift
//  programmaticTableViewDemo
//
//  Created by Ajay Merchia on 2/9/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//

import UIKit

class BadCell: UITableViewCell {
    
    var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
            
        nameLabel = UILabel(frame: CGRect(x: contentView.frame.width/4, y: 0, width: contentView.frame.width/2, height: contentView.frame.height))
        nameLabel.textAlignment = .center
        contentView.addSubview(nameLabel)
        
    }
    
    func addFrames() {
        nameLabel.layer.borderWidth = 1
        nameLabel.layer.borderColor = UIColor.red.cgColor
    }
}
