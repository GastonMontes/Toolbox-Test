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
    @IBOutlet private weak var collectionCellTitleContainer: UIView?
    @IBOutlet private weak var collectionCellTitle: UILabel?
    
    // MARK: - View life cycle.
    override func awakeFromNib() {
        super.awakeFromNib()

        self.backgroundColor = UIColor.carouselBackgroundColor()
        self.layer.cornerRadius = kCollectionViewCellCornerRadius
        
        self.collectionCellImage?.backgroundColor = UIColor.carouselImageThumbColor()
    }
    
    // MARK: - Data Functions.
    func collectionCellSetItemModel(itemModel: GMCarouselCollectionViewItemModel!) -> Void {
        self.collectionCellImage?.image = nil
        self.collectionCellImage?.loadImage(fromURLString: itemModel.itemModelImageURL)
        
        self.collectionCellTitle?.text = itemModel.itemModelTitle
        self.collectionCellTitle?.font = itemModel.itemModelTitleFont
        self.collectionCellTitle?.textColor = itemModel.itemModelTitleTextColor
        self.collectionCellTitle?.backgroundColor = itemModel.itemModelTitleBackgrounColor
        
        self.collectionCellTitleContainer?.backgroundColor = itemModel.itemModelTitleBackgrounColor
    }
    
    
}
