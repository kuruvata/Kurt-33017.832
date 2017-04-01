//  Created by Kurt Tacastacas on 6/7/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class AchievementsController: UIViewController {
    
    @IBOutlet weak var menuIndicator: UIImageView!
    @IBOutlet weak var AchievementsMenu: UIView!
    @IBOutlet weak var AchievementName: UILabel!
    @IBOutlet weak var AchievementNameValue: UILabel!
    @IBOutlet weak var AchievementNameEstCompletionDate: UILabel!
    @IBOutlet weak var AchievementNameCurrentValue: UILabel!
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    // MARK: Menu Buttons/Indicator
    @IBAction func menuAchievementAdd(sender: UIButton) {
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseInOut, animations: {
            self.menuIndicator.center.x = 65
            }, completion: nil)
//        AchievementsMenuPageViewController.scrollTomenuAchievementAdd(AchievementsMenuPageViewController)
    }
    
    @IBAction func menuAchievements(sender: UIButton) {
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseInOut, animations: {
            self.menuIndicator.center.x = 160
            }, completion: nil)
//        AchievementsMenuPageViewController?.scrollTomenuAchievements()
    }
    @IBAction func menuAchievementFinished(sender: UIButton) {
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseInOut, animations: {
            self.menuIndicator.center.x = 251
            }, completion: nil)
//        AchievementsMenuPageViewController?.scrollTomenuFinished()
    }
    @IBAction func menuAchievementArchive(sender: UIButton) {
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseInOut, animations: {
            self.menuIndicator.center.x = 349
            }, completion: nil)
//        AchievementsMenuPageViewController?.scrollTomenuArchive()
    }
}