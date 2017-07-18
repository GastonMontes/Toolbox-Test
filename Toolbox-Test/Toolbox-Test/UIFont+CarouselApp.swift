//
//  UIFont+CarouselApp.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    static func carouselTitleFont() -> UIFont {
        return UIFont.boldSystemFont(ofSize: 20)
    }
    
    static func carouselCollectionItemTitleSmallFont() -> UIFont {
        return UIFont.systemFont(ofSize: 10)
    }
    
    static func carouselCollectionItemTitleLargeFont() -> UIFont {
        return UIFont.systemFont(ofSize: 14)
    }
}
