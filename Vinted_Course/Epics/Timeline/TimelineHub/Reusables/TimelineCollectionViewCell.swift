//
//  TimelineCollectionViewCell.swift
//  Vinted_Course
//
//  Created by Hugo Bordais on 5/24/19.
//  Copyright © 2019 Hugo Bordais. All rights reserved.
//

import UIKit

class TimelineCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var userProfileimageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var brandNameLabel: UILabel!
    @IBOutlet weak var itemSizeLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(width article: Article){
        #warning("To be implemented Later")
    }

}
