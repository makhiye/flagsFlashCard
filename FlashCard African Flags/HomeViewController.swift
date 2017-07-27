//
//  HomeViewController.swift
//  FlashCard African Flags
//
//  Created by ishmael on 6/27/17.
//  Copyright © 2017 ishmael.mthombeni. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeImage.layer.cornerRadius = 10
        homeImage.layer.borderWidth = 1
        homeImage.layer.borderColor = UIColor.green.cgColor
        
        homeImage.clipsToBounds = true

        
    }

    override func viewDidDisappear(_ animated: Bool) {
        
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationController?.isNavigationBarHidden = true
    }
    

}
