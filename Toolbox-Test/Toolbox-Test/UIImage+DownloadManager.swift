//
//  UIImage+DownloadManager.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/18/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import Nuke

extension UIImage {
    class func downloadImage(fromURLString urlString: String!) -> Void {
        let url = URL(string: urlString)
        Manager.shared.loadImage(with: url!) { response in }
    }
}
