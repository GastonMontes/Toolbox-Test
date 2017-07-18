//
//  GMCarouselTableViewCellModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

class GMCarouselTableViewCellModel {
    // MARK: - Vars.
    private(set) var cellModelTitle: String!
    private(set) var cellModelItems: Array<GMCarouselCollectionViewItemModel>!
    private(set) var cellModelIdentifier: String!
    private(set) var cellModelHeigth: CGFloat!
    
    // MARK: - Initialization.
    init(withTitle title: String!, items: Array<GMCarouselCollectionViewItemModel>!) {
        self.cellModelTitle = title
        self.cellModelItems = items
        self.cellModelIdentifier = String(describing: GMCarouselTableViewCell.self)
        self.cellModelHeigth = kCollectionViewHeight + kCollectionViewPaddingTop
    }
}
