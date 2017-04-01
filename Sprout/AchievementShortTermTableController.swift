//
//  AchievementFinishedTableController.swift
//  Sprout
//
//  Created by Kurtoo on 6/11/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class AchievementShortTermTableController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Add a background view to the table view
        let backgroundImage = UIImage(named: "Sprout_BG_IMG.png")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
    }
    
}
