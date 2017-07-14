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
    private let kCarouselDataFileName = "Toolbox-Test-Data"
    private let kCarouselDataFileExtension = "json"
    
    // MARK: - Initialization.
    override init() {
        super.init()
        
        self.readCarouselDataFile()
    }
    
    private func readCarouselDataFile() {
        if let dataFilePath = Bundle.main.path(forResource:kCarouselDataFileName, ofType:kCarouselDataFileExtension) {
            do {
                let fileData = try Data(contentsOf: URL(fileURLWithPath: dataFilePath), options: .alwaysMapped)
                let jsonData = JSON(data: fileData)
                print(jsonData)
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}
