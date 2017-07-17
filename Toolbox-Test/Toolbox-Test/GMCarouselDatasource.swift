//
//  GMCarouselDatasource.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/14/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import UIKit

// MARK: - Constants.
private let kCarouselDataFilePath = "Toolbox-Test-Data.json"

class GMCarouselDatasource {
    // MARK: - Vars.
    private var carouselDatasourceModels = Array<GMCarouselModel>()
    
    // MARK: - Initialization.
    init() {
        self.readfile()
    }
    
    // MARK: - Data functions.
    private func readfile() -> Void {
        Bundle.bundleReadFile(filePath: kCarouselDataFilePath,
                              successRead: { [unowned self] dataRead in
                                self.getJSONData(data: dataRead)
        },
                              failRead: { (_ errorRead: BundleReadError) -> Void in
                                print(errorRead)
        })
    }
    
    private func getJSONData(data: Data) -> Void {
        data.dataGetJSON(successJSON: { [unowned self] dataJSON in
            self.createCarouselModels(dataJSON: dataJSON)
        },
                         failJSON: { (_ dataJSONError: DataJSONError) -> Void in
                            print(dataJSONError)
        })
    }
    
    // MARK: - Models functions.
    private func createCarouselModels(dataJSON: Array<Dictionary<String, Any>>) {
        for carouselDataJSON in dataJSON {
            self.carouselDatasourceModels.append(GMCarouselModel(carouselJSONData: carouselDataJSON))
        }
    }
    
    // MARK: - Carousel datasrouce functions.
    func carouselDatasourceCount() -> Int {
        return self.carouselDatasourceModels.count
    }
    
    func carouselDatasourceTitleForSection(section: Int) -> String {
        return self.carouselDatasourceModels[section].carouselModelTitle
    }
}
