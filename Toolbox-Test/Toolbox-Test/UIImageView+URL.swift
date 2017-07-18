//
//  UIImageView+URL.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/18/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit
import Nuke

extension UIImageView {
    func loadImage(fromURLString urlString: String!) -> Void {
        let url = URL(string: urlString)
        
        Nuke.loadImage(with: url!, into: self)
    }
}
