//
//  Bundle+File.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/14/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation

public enum BundleReadError : Error {
    case filePathNotFound
    case dataReadError
}

public typealias BundleReadSuccessClosure = (_ dataRead: Data) -> Void
public typealias BundleReadFailClosure = (_ errorRead: BundleReadError) -> Void

extension Bundle {
    class func bundleReadJSONFile(filePath: String!, successRead: BundleReadSuccessClosure!, failRead: BundleReadFailClosure!) {
        let filePathComponents : Array! = filePath.components(separatedBy: ".")
        let fileName : String! = filePathComponents[0]
        let fileExtension : String! = filePathComponents[1]

        if let dataFilePath = Bundle.main.path(forResource:fileName, ofType:fileExtension) {
            do {
                let fileData = try Data(contentsOf: URL(fileURLWithPath: dataFilePath), options: .alwaysMapped)
                successRead(fileData)
            } catch let error {
                print(error.localizedDescription)
                failRead(BundleReadError.dataReadError)
            }
        } else {
            failRead(BundleReadError.filePathNotFound)
        }
    }
}
