//
//  GMStackViewController.swift
//  Toolbox-Test
//
//  Created by Gaston Montes on 7/14/17.
//  Copyright © 2017 Gaston Montes. All rights reserved.
//

import UIKit

class GMStackViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var carouselTableView: UITableView?
    
    // MARk: - Vars.
    let carouselDataSource = GMCarouselDatasource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpTableView()
    }
}
