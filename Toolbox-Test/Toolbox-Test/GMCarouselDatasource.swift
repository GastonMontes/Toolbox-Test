//
//  GMCarouselDatasource.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/14/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import UIKit
import SwiftyJSON

class GMCarouselDatasource: NSObject {
    // MARK: - Constants.
    private let kCarouselDataFilePath = "Toolbox-Test-Data.json"
    
    // MARK: - Initialization.
    override init() {
        super.init()
        
        Bundle.bundleReadJSONFile(filePath: kCarouselDataFilePath,
                                  successRead: { (_ dataRead: Data) -> Void in },
                                  failRead: { (_ errorRead: BundleReadError) -> Void in })
    }
}
