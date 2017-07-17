//
//  GMStackViewController+TableView.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

extension GMStackViewController: UITableViewDataSource {

    // MARK: - UITableViewDataSource implementation.
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.carouselDataSource.carouselDatasourceCount()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.carouselDataSource.carouselDatasourceTitleForSection(section: section)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Every section has a cell with a collection view.
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(descriptor: GMCarouselTableViewCell.self))
        return cell
    }
}
