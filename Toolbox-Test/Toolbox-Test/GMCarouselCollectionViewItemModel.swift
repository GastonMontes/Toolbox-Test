//
//  GMCarouselCollectionViewItemModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation

class GMCarouselCollectionViewItemModel {
    // MARK: - Vars.
    private(set) var itemModelTitle: String!
    private(set) var itemModelImageURL: String!
    
    // MARK: - Initialization.
    init(withTitle title: String!, imageURLString: String!) {
        self.itemModelTitle = title
        self.itemModelImageURL = imageURLString
    }
}
