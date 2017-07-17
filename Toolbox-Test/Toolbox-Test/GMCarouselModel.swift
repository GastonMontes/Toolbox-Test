//
//  GMCarouselModel.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import UIKit

public enum GMCarouselModelType {
    case typeThumb
    case typePoster
}

// MARK: - Constants.
private let kCarouselModelTitleKey = "title"
private let kCarouselModelTypeKey = "type"
private let kCarouselModelTypePosterString = "poster"
private let kCarouselModelItemKey = "items"

class GMCarouselModel {
    // MARK: - Vars.
    private(set) var carouselModelTitle: String!
    private(set) var carouselModelType: GMCarouselModelType!
    private(set) var carouselModelItems = Array<GMCarouselModelItem>()
    
    // MARK: - Initialization.
    init(carouselJSONData: Dictionary<String, Any>) {
        self.carouselModelTitle = carouselJSONData[kCarouselModelTitleKey]! as! String
        self.carouselModelType = self.carouselModelType(stringType: carouselJSONData[kCarouselModelTypeKey]! as! String)
        self.addCarouselModelItems(items: carouselJSONData[kCarouselModelItemKey]! as! Array<Dictionary<String, String>>)
    }
    
    // MARK: - Data functions.
    private func carouselModelType(stringType: String!) -> GMCarouselModelType {
        if stringType == kCarouselModelTypePosterString {
            return GMCarouselModelType.typePoster
        }
        
        return GMCarouselModelType.typeThumb
    }
    
    private func addCarouselModelItems(items: Array<Dictionary<String, String>>) -> Void {
        for itemData in items {
            self.carouselModelItems.append(GMCarouselModelItem(modelItemJSONData: itemData))
        }
    }
}
