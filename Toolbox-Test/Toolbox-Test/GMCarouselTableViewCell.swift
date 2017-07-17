//
//  GMCarouselTableViewCell.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import UIKit

private let kCarouselCellHeightLarge = CGFloat(640)
private let kCarouselCellHeightSmall = CGFloat(320)

class GMCarouselTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets.
    @IBOutlet private weak var carouselCellTitle: UILabel?
    @IBOutlet private weak var carouselCellCollectionView: UICollectionView?
    
    // MARK: - View life cycle functions.
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor.black
        
        self.carouselCellSetupTitle()
        self.carouselCellSetupCollectionView()
    }
    
    // MARK: - Styling functions.
    private func carouselCellSetupTitle() -> Void {
        self.carouselCellTitle?.textColor = UIColor.carouselTitleTextColor()
        self.carouselCellTitle?.font = UIFont.carouselTitleFont()
    }
    
    private func carouselCellSetupCollectionView() -> Void {
        self.carouselCellCollectionView?.backgroundColor = UIColor.gray
    }
    
    class func carouselCellHeightSmall() -> CGFloat {
        return kCarouselCellHeightSmall
    }
    
    class func carouselCellHeightLarge() -> CGFloat {
        return kCarouselCellHeightLarge
    }
    
    // MARK: - Data functions.
    func carouselCellSetModel(model: GMCarouselTableViewCellModel!) -> Void {
        self.carouselCellTitle?.text = model.carouselCellTitle
    }
}
