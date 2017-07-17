//
//  Data+JSON.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/16/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import SwiftyJSON

public enum DataJSONError : Error {
    case invaidJSON
}

public typealias DataJSONSuccessClosure = (_ dataJSON: Array<Dictionary<String, Any>>) -> Void
public typealias DataJSONFailClosure = (_ dataJSONError: DataJSONError) -> Void

extension Data {
    func dataGetJSON(successJSON: DataJSONSuccessClosure!, failJSON: DataJSONFailClosure!) {
        let jsonObj = JSON(data: self)
        
        if jsonObj != JSON.null {
            let dataJSONArray = jsonObj.arrayValue
            var dataArray = Array<Dictionary<String, Any>>()
            
            for dataJSON in dataJSONArray {
                dataArray.append(dataJSON.dictionaryObject!)
            }
            
            successJSON(dataArray)
        } else {
            failJSON(DataJSONError.invaidJSON)
        }
    }
}
