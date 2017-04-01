//  Created by Kurtoo on 6/10/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class AchievementsList {
    // MARK: Achievement List Properties
    var achievementName: String
    var achievementValue: Int
    var achievementProgress: Int
    
    //MARK: Achievement List Initialization
    init?(achievementName: String, achievementValue: Int, achievementProgress: Int) {
        self.achievementName = achievementName
        self.achievementValue = achievementValue
        self.achievementProgress = achievementProgress
        if achievementName.isEmpty || achievementValue < 0 || achievementProgress < 0 {
            return nil
        }
    }
}