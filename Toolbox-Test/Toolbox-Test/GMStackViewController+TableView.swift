//
//  GMStackViewController+TableView.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

private let kStatusBarHeight = CGFloat(20)

extension GMStackViewController: UITableViewDataSource {

    // MARK: - Table configuration functions.
    func setUpTableView() -> Void {
        self.carouselTableView?.contentInset = UIEdgeInsets(top: kStatusBarHeight, left: 0, bottom: 0, right: 0)
    }
    
    // MARK: - UITableViewDataSource implementation.
    func numberOfSections(in tableView: UITableView) -> Int {
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
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: GMCarouselTableViewCell.self)) as! GMCarouselTableViewCell
        return cell
    }
}
