//
//  GMCarouselCollectionViewItemModel+CarouselModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation

extension GMCarouselCollectionViewItemModel {
    static func itemModel(fromCarouselItemModel itemModel: GMCarouselModelItem, carouselType: GMCarouselModelType!) -> GMCarouselCollectionViewItemModel! {
        
        
        return GMCarouselCollectionViewItemModel(withTitle: itemModel.modelItemTitle, imageURLString: itemModel.modelItemImageURL, collectionType: GMCarouselCollectionViewItemModel.itemModelType(forCarouselType: carouselType))
    }
    
    static private func itemModelType(forCarouselType type: GMCarouselModelType!) -> GMCarouselCollectionViewCellType! {
        if type == GMCarouselModelType.typePoster {
            return GMCarouselCollectionViewCellType.typeSmall
        }
        
        return GMCarouselCollectionViewCellType.typeLarge
    }
}
