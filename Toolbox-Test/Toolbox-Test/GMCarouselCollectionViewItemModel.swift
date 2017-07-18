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
    private(set) var itemModelImageURL: String!
    private(set) var itemModelCellWidth: CGFloat!
    
    // MARK: - Initialization.
    init(withTitle title: String!, imageURLString: String!, collectionType: GMCarouselCollectionViewCellType!) {
        self.itemModelTitle = title
        self.itemModelImageURL = imageURLString + "?t=\(Date.timeIntervalSinceReferenceDate)"
        self.itemModelCellWidth = self.collectionViewItemWidth(forType: collectionType)
        
        // Start download image before showing it.
        UIImage.downloadImage(fromURLString: self.itemModelImageURL)
    }
    
    // MARK: - Width functions.
    private func collectionViewItemWidth(forType type: GMCarouselCollectionViewCellType) -> CGFloat {
        if type == GMCarouselCollectionViewCellType.typeLarge {
            return kCollectionViewWidthLarge
        }
        
        return kCollectionViewWidthSmall
    }
}
