//
//  GMCarouselTableView+CollectionView.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import Foundation
import UIKit

extension GMCarouselTableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
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
        let itemCellModel = self.carouselCollectionViewItems[indexPath.row]
        
        let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: itemCellModel.itemModelIdentifier, for: indexPath) as! GMCarouselCollectionViewCell
        
        itemCell.collectionCellSetItemModel(itemModel: itemCellModel)
        
        return itemCell
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout implementation.
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemCellModel = self.carouselCollectionViewItems[indexPath.row]
        
        return CGSize(width: itemCellModel.itemModelCellWidth, height: kCollectionViewHeight)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: kCollectionViewInsetHorizontal, bottom: 0, right: kCollectionViewInsetHorizontal)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return kCollectionViewInsetHorizontal
    }
}
