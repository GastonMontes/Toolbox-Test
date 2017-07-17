//
//  GMCarouselModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import UIKit
import SwiftyJSON

public enum GMCarouselModelType {
    case typeThumb
    case typePoster
}

// MARK: - Constants.
private let kCarouselModelTitleKey = "title"
private let kCarouselModelTypeKey = "type"
private let kCarouselModelTypePosterString = "poster"

class GMCarouselModel {
    // MARK: - Vars.
    private(set) var carouselModelTitle: String!
    private var carouselModelType: GMCarouselModelType!
    private(set) var carouselModelItems = Array<Any>()
    
    // MARK: - Initialization.
    init(carouselJSONData: JSON) {
        self.carouselModelTitle = carouselJSONData[kCarouselModelTitleKey].stringValue
        self.carouselModelType = self.carouselModelType(stringType: carouselJSONData[kCarouselModelTypeKey].stringValue)
    }
    
    // MARK: - Data functions.
    private func carouselModelType(stringType: String!) -> GMCarouselModelType {
        if stringType == kCarouselModelTypePosterString {
            return GMCarouselModelType.typePoster
        }
        
        return GMCarouselModelType.typeThumb
    }
}
