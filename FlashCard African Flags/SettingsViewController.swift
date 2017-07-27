//
//  SettingsViewController.swift
//  FlashCard African Flags
//
//  Created by ishmael on 6/21/17.
//  Copyright © 2017 ishmael.mthombeni. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var nameSwitch: UISwitch!
    
    @IBOutlet weak var flagSwitch: UISwitch!
    
    @IBOutlet weak var infoSwitch: UISwitch!
    
    
    @IBAction func checkSwitches(_ sender: UISwitch) {
        
        
        if nameSwitch .isOn && flagSwitch.isOn && infoSwitch.isOn {
            
            if sender.tag == 1 || sender.tag == 3 {
                
                flagSwitch.isOn = false
            }else{
                
                nameSwitch.isOn = false
                
            }
            
        }
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let thatCardVC = segue.destination as! CardViewController
        
        thatCardVC.hideSettings = (nameSwitch.isOn, flagSwitch.isOn, infoSwitch.isOn)
        
    }
    
}
