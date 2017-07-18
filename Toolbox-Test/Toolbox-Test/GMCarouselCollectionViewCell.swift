//
//  GMCarouselCollectionViewCell.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import UIKit

private let kCollectionViewCellCornerRadius = CGFloat(4)

class GMCarouselCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOulets.
    @IBOutlet private weak var collectionCellImage: UIImageView?
    
    // MARK: - View life cycle.
    override func awakeFromNib() {
        super.awakeFromNib()

        self.collectionCellImage?.backgroundColor = UIColor.carouselImageThumbColor()
        self.backgroundColor = UIColor.carouselBackgroundColor()
        
        self.layer.cornerRadius = kCollectionViewCellCornerRadius
    }
}
