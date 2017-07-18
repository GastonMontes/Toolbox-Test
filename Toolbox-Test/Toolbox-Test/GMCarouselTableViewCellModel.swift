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

public enum GMCarouselTableViewCellModelType {
    case typeLarge
    case typeSmall
}

class GMCarouselTableViewCellModel {
    // MARK: - Vars.
    private(set) var cellModelTitle: String!
    private(set) var cellModelItems: Array<GMCarouselCollectionViewItemModel>!
    private(set) var cellModelIdentifier: String!
    private(set) var cellModelHeigth: CGFloat!
    
    // MARK: - Initialization.
    init(withTitle title: String!, items: Array<GMCarouselCollectionViewItemModel>!, type: GMCarouselTableViewCellModelType) {
        self.cellModelTitle = title
        self.cellModelItems = items
        self.cellModelIdentifier = String(describing: GMCarouselTableViewCell.self)
        self.cellModelHeigth = self.cellModelHeigth(forType: type)
    }
    
    // MARK: - Cell height functions.
    private func cellModelHeigth(forType type: GMCarouselTableViewCellModelType) -> CGFloat {
        if type == GMCarouselTableViewCellModelType.typeSmall {
            return kCellHeightSmall
        }
        
        return kCellHeightLarge
    }
}
