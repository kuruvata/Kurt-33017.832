//  Created by Kurt Tacastacas on 6/7/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class ProgressController: UIViewController {
    
    @IBOutlet weak var SproutValue: UILabel!
    @IBOutlet weak var SproutPoints: UILabel!
    @IBOutlet weak var SproutPointsValue: UILabel!
    @IBOutlet weak var buttonPause: UIButton!
    @IBOutlet weak var buttonPlay: UIButton!
    @IBOutlet weak var MenuIndicator: UIImageView!
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), forControlEvents: UIControlEvents.TouchDown)
    }
    @IBAction func buttonPause(sender: UIButton) {
        buttonPlay.hidden = false
        buttonPause.hidden = true
        UIView.animateWithDuration(1.0, animations: {
            self.SproutValue.textColor = UIColor.grayColor()
            self.SproutPoints.textColor = UIColor.grayColor()
            self.SproutPointsValue.textColor = UIColor.grayColor()
        })
    }
    @IBAction func buttonPlay(sender: UIButton) {
        buttonPlay.hidden = true
        buttonPause.hidden = false
        UIView.animateWithDuration(0.4, delay: 0.5, options: .CurveEaseOut, animations: {
            self.SproutValue.textColor = UIColor(red:0.16, green:0.75, blue:0.40, alpha:1.0)
            self.SproutPoints.textColor = UIColor(red:0.16, green:0.75, blue:0.40, alpha:1.0)
            self.SproutPointsValue.textColor = UIColor(red:0.16, green:0.75, blue:0.40, alpha:1.0)
        }, completion: nil)
    }
    
    @IBAction func menuToday(sender: UIButton) {
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseInOut, animations: {
            self.MenuIndicator.center.x = 65
        }, completion: nil)
    }
    @IBAction func menuWeek(sender: UIButton) {
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseInOut, animations: {
            self.MenuIndicator.center.x = 160
        }, completion: nil)
    }
    @IBAction func menuMonth(sender: UIButton) {
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseInOut, animations: {
            self.MenuIndicator.center.x = 251
            }, completion: nil)
    }
    @IBAction func menuYear(sender: UIButton) {
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseInOut, animations: {
            self.MenuIndicator.center.x = 349
            }, completion: nil)
    }
}