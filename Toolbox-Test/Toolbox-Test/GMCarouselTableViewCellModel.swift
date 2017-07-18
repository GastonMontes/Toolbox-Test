//
//  GMCarouselTableViewCellModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

private let kCarouselCellHeightLarge = CGFloat(640)
private let kCarouselCellHeightSmall = CGFloat(320)

class GMCarouselTableViewCellModel {
    // MARK: - Vars.
    private(set) var cellModelTitle: String!
    private(set) var cellModelItems: Array<GMCarouselCollectionViewItemModel>!
    
    // MARK: - Initialization.
    init(withTitle title: String!, items: Array<GMCarouselCollectionViewItemModel>!) {
        self.cellModelTitle = title
        self.cellModelItems = items
    }
    
    // MARK: - Cell height functions.
    class func carouselCellHeightSmall() -> CGFloat {
        return kCarouselCellHeightSmall
    }
    
    class func carouselCellHeightLarge() -> CGFloat {
        return kCarouselCellHeightLarge
    }
}
