//  Created by Kurt Tacastacas on 6/7/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class PortfolioController: UIViewController {
    
    @IBOutlet weak var menuButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), forControlEvents: UIControlEvents.TouchDown)
    }
}