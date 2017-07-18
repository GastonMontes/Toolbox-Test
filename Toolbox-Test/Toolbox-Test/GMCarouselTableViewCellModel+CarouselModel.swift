//
//  GMCarouselTableViewCellModel+CarouselModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation

extension GMCarouselTableViewCellModel {
    static func cellModel(withTitle title: String!, items: Array<GMCarouselModelItem>!, carouselType: GMCarouselModelType!) -> GMCarouselTableViewCellModel! {
        
        var cellModelItems = Array<GMCarouselCollectionViewItemModel>()
        
        for carouselModelItem in items {
            let collectionModelItem = GMCarouselCollectionViewItemModel.itemModel(fromCarouselItemModel: carouselModelItem, carouselType: carouselType)
            cellModelItems.append(collectionModelItem!)
        }
        
        return GMCarouselTableViewCellModel(withTitle: title, items: cellModelItems)
    }
}
