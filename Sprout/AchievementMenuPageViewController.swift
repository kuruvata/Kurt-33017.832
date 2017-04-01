//  Created by Kurtoo on 6/11/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class AchievementsMenuPageViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .Forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.AchievementsMenuViewController("achievementMenuAchievementAdd"),
                self.AchievementsMenuViewController("achievementMenuAchievementList"),
                self.AchievementsMenuViewController("achievementMenuAchievementShortTerm"),
                self.AchievementsMenuViewController("achievementMenuAchievementLongTerm")]
    }()
    
    private func AchievementsMenuViewController(achievementsmenu: String) -> UIViewController {
        return UIStoryboard(name: "Achievements", bundle: nil).instantiateViewControllerWithIdentifier("\(achievementsmenu)")
    }
}

// MARK: Page Controller
extension AchievementsMenuPageViewController: UIPageViewControllerDataSource {
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
    
    func scrollTomenuAchievementAdd() -> UIViewController {
        return UIStoryboard(name: "Achievements", bundle: nil).instantiateViewControllerWithIdentifier("achievementMenuAchievementAdd")
    }
//
//    func scrollTomenuAchievements() -> UIViewController {
//        return UIStoryboard(name: "Achievements", bundle: nil) .
//            instantiateViewControllerWithIdentifier("achievementMenuAchievements")
//    }
//    
//    func scrollTomenuAchievementFinished() -> UIViewController {
//        return UIStoryboard(name: "Achievements", bundle: nil) .
//            instantiateViewControllerWithIdentifier("achievementMenuAchievementFinished")
//    }
//    
//    func scrollTomenuAchievementArchive() -> UIViewController {
//        return UIStoryboard(name: "Achievements", bundle: nil) .
//            instantiateViewControllerWithIdentifier("achievementMenuAchievementArchive")
//    }
}