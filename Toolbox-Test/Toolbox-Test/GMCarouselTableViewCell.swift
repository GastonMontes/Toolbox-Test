//
//  GMCarouselTableViewCell.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import UIKit

class GMCarouselTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets.
    @IBOutlet private weak var carouselCellTitle: UILabel?
    @IBOutlet weak var carouselCellCollectionView: UICollectionView?
    
    private(set) var carouselCollectionViewItems = Array<GMCarouselCollectionViewItemModel>()
    
    // MARK: - View life cycle functions.
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor.carouselBackgroundColor()
        
        self.carouselCellSetupTitle()
        self.carouselCellSetupCollectionView()
    }
    
    // MARK: - Styling functions.
    private func carouselCellSetupTitle() -> Void {
        self.carouselCellTitle?.textColor = UIColor.carouselTitleTextColor()
        self.carouselCellTitle?.font = UIFont.carouselTitleFont()
    }
    
    // MARK: - Data functions.
    func carouselCellSetModel(model: GMCarouselTableViewCellModel!) -> Void {
        self.carouselCellTitle?.text = model.cellModelTitle
        self.carouselCollectionViewItems = model.cellModelItems
    }
}
