//
//  AchievementListTableViewCell.swift
//  Sprout
//
//  Created by Kurtoo on 6/10/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class AchievementListTableViewCell: UITableViewCell {
    @IBOutlet weak var achievementNameLabel: UILabel!
    @IBOutlet weak var achievementValueLabel: UILabel!
    @IBOutlet weak var achievementProgressLabel: ProgressBar!
    @IBOutlet weak var achievementPercentageLabel: UILabel!
    @IBOutlet weak var achievementPercentageIndicator: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}