//
//  MyCell.swift
//  programmaticTableViewDemo
//
//  Created by Ajay Merchia on 2/9/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//

import UIKit

class GoodCell: UITableViewCell {

    var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code NOT
    }
    
    func initCellFrom(size: CGSize) {
        nameLabel = UILabel(frame: CGRect(x: size.width/4, y: 0, width: size.width/2, height: size.height))
        nameLabel.textAlignment = .center
        contentView.addSubview(nameLabel)
    }
    
    func addFrames() {
        nameLabel.layer.borderWidth = 1
        nameLabel.layer.borderColor = UIColor.green.cgColor
    }
    
}
