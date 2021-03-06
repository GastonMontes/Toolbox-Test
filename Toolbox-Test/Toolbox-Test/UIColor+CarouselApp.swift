//
//  UIColor+CarouselApp.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func carouselBackgroundColor() -> UIColor {
        return UIColor.black
    }
    
    static func carouselTitleTextColor() -> UIColor {
        return UIColor(red: 0.9255, green: 0.2980, blue: 0.1647, alpha: 1.0)
    }
    
    static func carouselImageThumbColor() -> UIColor {
        return UIColor.lightGray
    }
    
    static func carouselCollectionItemTitleDarkTextColor() -> UIColor {
        return UIColor.darkText
    }
    
    static func carouselCollectionItemTitleWhiteTextColor() -> UIColor {
        return UIColor.white
    }
}
