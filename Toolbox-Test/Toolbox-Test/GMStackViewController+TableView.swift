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

extension GMStackViewController: UITableViewDataSource, UITableViewDelegate {

    // MARK: - Table configuration functions.
    func setUpTableView() -> Void {
        self.carouselTableView?.backgroundColor = UIColor.carouselBackgroundColor()
        self.carouselTableView?.contentInset = UIEdgeInsets(top: kStatusBarHeight, left: 0, bottom: 0, right: 0)
        
        let cellName =  String(describing: GMCarouselTableViewCell.self)
        self.carouselTableView?.register(UINib(nibName:  cellName, bundle: nil), forCellReuseIdentifier:  cellName)
    }
    
    // MARK: - UITableViewDataSource implementation.
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.carouselDataSource.carouselDatasourceCount()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Every section has a cell with a collection view.
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: GMCarouselTableViewCell.self)) as! GMCarouselTableViewCell
        
        let cellModelTitle = self.carouselDataSource.carouselDatasourceTitle(forSection: indexPath.section)
        let carouselItems = self.carouselDataSource.carouselDatasourceItems(forSection: indexPath.section)
        
        let cellModel = GMCarouselTableViewCellModel.cellModel(withTitle: cellModelTitle, items: carouselItems)
        cell.carouselCellSetModel(model: cellModel)
        
        return cell
    }
    
    // MARK: - UITableViewDelegate implementation.
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let carouselType = self.carouselDataSource.carouselDatasrouceType(forSection: indexPath.section)
        
        if carouselType == GMCarouselModelType.typePoster {
            return GMCarouselTableViewCell.carouselCellHeightSmall()
        }
        
        return GMCarouselTableViewCell.carouselCellHeightLarge()
    }
}
