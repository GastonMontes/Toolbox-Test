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
        
        self.readfile()
    }
    
    func readfile() -> Void {
        Bundle.bundleReadFile(filePath: kCarouselDataFilePath,
                              successRead: { (_ dataRead: Data) -> Void in
                                self.getJSONData(data: dataRead)
        },
                              failRead: { (_ errorRead: BundleReadError) -> Void in
                                print(errorRead)
        })
    }
    
    func getJSONData(data: Data) -> Void {
        data.dataGetJSON(successJSON: { (_ dataJSON: JSON) -> Void in
            print(dataJSON)
        },
                         failJSON: { (_ dataJSONError: DataJSONError) -> Void in
                            print(dataJSONError)
        })
    }
}
