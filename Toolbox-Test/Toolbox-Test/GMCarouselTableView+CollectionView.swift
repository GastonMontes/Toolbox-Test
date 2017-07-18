//
//  GMCarouselTableView+CollectionView.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

extension GMCarouselTableViewCell: UICollectionViewDataSource {
    
    // MARK: - Collection view configuration.
    func carouselCellSetupCollectionView() -> Void {
        self.carouselCellCollectionView?.backgroundColor = UIColor.carouselBackgroundColor()
        
        let nibName = String(describing: GMCarouselCollectionViewCell.self)
        self.carouselCellCollectionView?.register(UINib(nibName: nibName, bundle: nil), forCellWithReuseIdentifier: nibName)
    }
    
    // MARK: - UICollectionViewDataSource implementation.
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.carouselCollectionViewItems.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GMCarouselCollectionViewCell", for: indexPath)
        return itemCell
    }
}
