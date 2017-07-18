//
//  GMCarouselCollectionViewItemModel+CarouselModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation

extension GMCarouselCollectionViewItemModel {
    static func itemModel(fromCarouselItemModel itemModel: GMCarouselModelItem) -> GMCarouselCollectionViewItemModel {
        return GMCarouselCollectionViewItemModel(withTitle: itemModel.modelItemTitle, imageURLString: itemModel.modelItemImageURL)
    }
}
