//
//  ExploreTableViewController.swift
//  FlashCard African Flags
//
//  Created by ishmael on 6/26/17.
//  Copyright © 2017 ishmael.mthombeni. All rights reserved.
//

import UIKit

class ExploreTableViewController: UITableViewController {
    
    
    let thisCardDeck = CardDeck()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return thisCardDeck.cardData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! ListTableViewCell
        cell.nameLabel.text = thisCardDeck.cardData[indexPath.row].country
        cell.flagImage.image = UIImage(named: thisCardDeck.cardData[indexPath.row].country)
        

//        cell.textLabel?.text = thisCardDeck.cardData[indexPath.row].country
//        cell.imageView?.image = UIImage(named: thisCardDeck.cardData[indexPath.row].country)
        
        
        
        
        
        

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        performSegue(withIdentifier: "TableToCard", sender: indexPath.row)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let destVC = segue.destination as! CardViewController
        
        destVC.exploreCardNumber = sender as? Int
        
        
    }
    
}
