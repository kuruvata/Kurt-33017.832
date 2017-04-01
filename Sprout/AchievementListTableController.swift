//  Created by Kurtoo on 6/9/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class AchievementListTableController: UITableViewController {
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // Call achievements Variables
    var achievements = [AchievementsList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleachievements()
        // Add a background view to the table view
        let backgroundImage = UIImage(named: "Sprout_BG_IMG.png")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
    }
    
    func loadSampleachievements() {
        let achievement1 = AchievementsList(achievementName: "House", achievementValue: 120400, achievementProgress: 10)!
        let achievement2 = AchievementsList(achievementName: "iPhone", achievementValue: 900, achievementProgress: 0)!
        let achievement3 = AchievementsList(achievementName: "Car", achievementValue: 2400, achievementProgress: 42)!
        let achievement4 = AchievementsList(achievementName: "Mattress", achievementValue: 1000, achievementProgress: 54)!
        let achievement5 = AchievementsList(achievementName: "MacBook Pro", achievementValue: 2000, achievementProgress: 81)!
        let achievement6 = AchievementsList(achievementName: "iPad", achievementValue: 1000, achievementProgress: 90)!
        achievements += [achievement1, achievement2, achievement3, achievement4, achievement5, achievement6]
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return achievements.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "AchievementListTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! AchievementListTableViewCell
        let achievement = achievements[indexPath.row]
        cell.achievementNameLabel.text = achievement.achievementName
        cell.achievementValueLabel.text = String (achievement.achievementValue)
        cell.achievementProgressLabel.progress = (achievement.achievementProgress) / 10
        let percentage = String (achievement.achievementProgress) + "%"
        cell.achievementPercentageLabel.text = percentage
        //Insert Indicator and Percentage Location
        
        return cell
    }
}