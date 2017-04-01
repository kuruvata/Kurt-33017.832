//  Created by Kurtoo on 6/10/16.
//  Copyright © 2016 Sprout. All rights reserved.
//

import UIKit

class ProgressBar: UIView {
    // MARK: Properties
    
    var progress = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    var progressButtons = [UIButton]()
    let spacing = 2
    let dotNumber = 10
    let dotSize = 10
    let locY = 20
    
    // MARK: Initialization
    override func layoutSubviews() {
        // Set the button's width and height to a square the size of the frame's height.
        var progressBarFrame = CGRect(x: 0, y: locY, width: dotSize, height: dotSize)
        
        // Offset each button's origin by the length of the button plus some spacing.
        for (index, button) in progressButtons.enumerate() {
            progressBarFrame.origin.x = CGFloat(index * (dotSize + spacing))
            button.frame = progressBarFrame
        }
        updateButtonSelectionStates()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let imgEmptyDot = UIImage(named: "Sprout_EmptyDot_IMG")
        let imgDot = UIImage(named: "Sprout_Dot_IMG")
        
        for _ in 0..<dotNumber {
            let button = UIButton(frame: CGRect(x: 0, y: locY, width: dotSize, height: dotSize))
            button.setImage(imgEmptyDot, forState: .Normal)
            button.setImage(imgDot, forState: .Selected)
            button.setImage(imgDot, forState: [.Highlighted, .Selected])
            button.adjustsImageWhenHighlighted = false
            button.addTarget(self, action: #selector(ProgressBar.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
            progressButtons += [button]
            addSubview(button)
        }
        
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 200, height: 50)
    }
    
    func ratingButtonTapped(button: UIButton) {
        progress = progressButtons.indexOf(button)! + 1
        updateButtonSelectionStates()
    }
    
    func updateButtonSelectionStates() {
        for (index, button) in progressButtons.enumerate() {
            // If the index of a button is less than the rating, that button shouldn't be selected.
            button.selected = index < progress
        }
    }
}