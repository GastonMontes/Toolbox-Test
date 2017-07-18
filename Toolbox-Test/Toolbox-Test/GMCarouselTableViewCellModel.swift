//
//  GMCarouselTableViewCellModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

private let kCellHeightLarge = CGFloat(640)
private let kCellHeightSmall = CGFloat(320)

class GMCarouselTableViewCellModel {
    // MARK: - Vars.
    private(set) var cellModelTitle: String!
    private(set) var cellModelItems: Array<GMCarouselCollectionViewItemModel>!
    private(set) var cellModelIdentifier: String!
    
    // MARK: - Initialization.
    init(withTitle title: String!, items: Array<GMCarouselCollectionViewItemModel>!) {
        self.cellModelTitle = title
        self.cellModelItems = items
        self.cellModelIdentifier = String(describing: GMCarouselTableViewCell.self)
    }
    
    // MARK: - Cell height functions.
    class func carouselCellHeightSmall() -> CGFloat {
        return kCellHeightSmall
    }
    
    class func carouselCellHeightLarge() -> CGFloat {
        return kCellHeightLarge
    }
}
