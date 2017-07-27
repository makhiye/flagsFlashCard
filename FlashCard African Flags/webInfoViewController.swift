//
//  webInfoViewController.swift
//  FlashCard African Flags
//
//  Created by ishmael on 6/22/17.
//  Copyright © 2017 ishmael.mthombeni. All rights reserved.
//

import UIKit

class webInfoViewController: UIViewController {
    
    
    @IBOutlet weak var myWebView: UIWebView!
    
    var name = "south africa"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        var wikiUrlString = "https://en.wikipedia.org/wiki/" + name
        wikiUrlString = wikiUrlString.replacingOccurrences(of: " ", with: "_")
        
        if let wikiurl = URL(string: wikiUrlString){
            
            myWebView.loadRequest(URLRequest(url: wikiurl))
            
            
        }
        
    }


}
