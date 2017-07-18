//
//  GMCarouselTableViewCellModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation

class GMCarouselTableViewCellModel {
    // MARK: - Vars.
    private(set) var cellModelTitle: String!
    private(set) var cellModelItems: Array<GMCarouselCollectionViewItemModel>!
    
    // MARK: - Initialization.
    init(withTitle title: String!, items: Array<GMCarouselCollectionViewItemModel>!) {
        self.cellModelTitle = title
        self.cellModelItems = items
    }
}
