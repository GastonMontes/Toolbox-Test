//
//  GMCarouselModelItem.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation

// MARK: - Constants.
private let kModelItemTitleKey = "title"
private let kModelItemImageKey = "url"
private let kModelItemVideoKey = "video"

class GMCarouselModelItem {
    // MARK: - Vars.
    private(set) var modelItemTitle: String!
    private(set) var modelItemImageURL: String!
    private(set) var modelItemVideoURL: String?
    
    // MARK: - Initialization.
    init(modelItemJSONData: Dictionary<String, String>!) {
        self.modelItemTitle = modelItemJSONData[kModelItemTitleKey]!
        self.modelItemImageURL = modelItemJSONData[kModelItemImageKey]!
        self.modelItemVideoURL = modelItemJSONData[kModelItemVideoKey]!
    }
}
