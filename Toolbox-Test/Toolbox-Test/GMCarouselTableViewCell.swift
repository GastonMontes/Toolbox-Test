//
//  GMCarouselTableViewCell.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/17/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import UIKit

private let kCarouselCellHeightLarge = CGFloat(640)
private let kCarouselCellHeightSmall = CGFloat(320)

class GMCarouselTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    // MARK: - Styling functions.
    class func carouselCellHeightSmall() -> CGFloat {
        return kCarouselCellHeightSmall
    }
    
    class func carouselCellHeightLarge() -> CGFloat {
        return kCarouselCellHeightLarge
    }
}
