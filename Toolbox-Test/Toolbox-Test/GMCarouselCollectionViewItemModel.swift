//
//  GMCarouselCollectionViewItemModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

public enum GMCarouselCollectionViewCellType {
    case typeLarge
    case typeSmall
}

class GMCarouselCollectionViewItemModel {
    // MARK: - Vars.
    private(set) var itemModelTitle: String!
    private(set) var itemModelTitleFont: UIFont!
    private(set) var itemModelTitleTextColor: UIColor!
    private(set) var itemModelTitleBackgrounColor: UIColor!
    private(set) var itemModelImageURL: String!
    private(set) var itemModelCellWidth: CGFloat!
    
    // MARK: - Initialization.
    init(withTitle title: String!, imageURLString: String!, collectionType: GMCarouselCollectionViewCellType!) {
        self.itemModelTitle = title
        self.itemModelImageURL = imageURLString + "?t=\(Date.timeIntervalSinceReferenceDate)"
        
        if collectionType == GMCarouselCollectionViewCellType.typeLarge {
            self.collectionViewConfigureLarge()
        } else {
            self.collectionViewConfigureSmall()
        }
        
        // Start download image before showing it.
        UIImage.downloadImage(fromURLString: self.itemModelImageURL)
    }
    
    // MARK: - Styling functions.
    private func collectionViewConfigureLarge() -> Void {
        self.itemModelCellWidth = kCollectionViewWidthLarge
        self.itemModelTitleFont = UIFont.carouselCollectionItemTitleSmallFont()
        self.itemModelTitleTextColor = UIColor.carouselCollectionItemTitleDarkTextColor()
        self.itemModelTitleBackgrounColor = UIColor.carouselImageThumbColor()
    }
    
    private func collectionViewConfigureSmall() -> Void {
        self.itemModelCellWidth = kCollectionViewWidthSmall
        self.itemModelTitleFont = UIFont.carouselCollectionItemTitleLargeFont()
        self.itemModelTitleTextColor = UIColor.carouselCollectionItemTitleWhiteTextColor()
        self.itemModelTitleBackgrounColor = UIColor.clear
    }
}
