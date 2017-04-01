//  Created by Kurt Tacastacas on 5/31/16.
//  Copyright © 2016 Sprout. All rights reserved.

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: User Info Properties
    @IBOutlet weak var userUsername: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var userIncome: UITextField!
    @IBOutlet weak var userFirstName: UITextField!
    @IBOutlet weak var userLastName: UITextField!
    @IBOutlet weak var userDOBMM: UITextField!
    @IBOutlet weak var userDOBDD: UITextField!
    @IBOutlet weak var userDOBYYYY: UITextField!
    @IBOutlet weak var userAccountNumber: UITextField!
    @IBOutlet weak var userRoutingNumber: UITextField!
    @IBOutlet weak var userSSN: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        userUsername.delegate = self
//        userPassword.delegate = self
//        userIncome.delegate = self
//        userFirstName.delegate = self
//        userLastName.delegate = self
//        userDOBMM.delegate = self
//        userDOBDD.delegate = self
//        userDOBYYYY.delegate = self
//        userAccountNumber.delegate = self
//        userRoutingNumber.delegate = self
//        userSSN.delegate = self
    }
    
    // MARK: Text Field Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        userUsername.resignFirstResponder()
        userPassword.resignFirstResponder()
        userIncome.resignFirstResponder()
        userIncome.resignFirstResponder()
        userFirstName.resignFirstResponder()
        userLastName.resignFirstResponder()
        userDOBMM.resignFirstResponder()
        userDOBDD.resignFirstResponder()
        userDOBYYYY.resignFirstResponder()
        userAccountNumber.resignFirstResponder()
        userRoutingNumber.resignFirstResponder()
        userSSN.resignFirstResponder()
        return true
    }
}