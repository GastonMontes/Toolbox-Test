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
        let cellModel = self.cellModel(forSection: indexPath.section)!
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.cellModelIdentifier) as! GMCarouselTableViewCell
        
        cell.carouselCellSetModel(model: cellModel)
        
        return cell
    }
    
    // MARK: - UITableViewDelegate implementation.
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.cellModel(forSection: indexPath.section).cellModelHeigth
    }
    
    // MARK: - Cell model functions.
    // This function link view models with app model.
    private func cellModel(forSection section: Int) -> GMCarouselTableViewCellModel! {
        let cellModelTitle = self.carouselDataSource.carouselDatasourceTitle(forSection:section)
        let carouselItems = self.carouselDataSource.carouselDatasourceItems(forSection: section)
        let carouselType = self.carouselDataSource.carouselDatasourceType(forSection: section)
        return GMCarouselTableViewCellModel.cellModel(withTitle: cellModelTitle, items: carouselItems, carouselType: carouselType)!
    }
}
