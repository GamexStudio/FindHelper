//
//  ViewController.swift
//  FindHelper
//
//  Created by TTH on 27/10/16.
//  Copyright © 2016 Gamex. All rights reserved.
//

import UIKit
import DigitsKit
import AccountKit
class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func getOTP(_ sender: AnyObject) {
        
        let digits = Digits.sharedInstance()
        let configuration = DGTAuthenticationConfiguration(accountFields: .defaultOptionMask)
        configuration?.phoneNumber = "+919904081622"
        digits.authenticate(with: nil, configuration: configuration!) { session, error in
            // Country selector will be set to Spain and phone number field will be set to 5555555555
        }

        
    }
    @IBOutlet weak var didtap: UIButton!

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

