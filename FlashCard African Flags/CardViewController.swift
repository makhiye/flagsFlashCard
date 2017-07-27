//
//  CardViewController.swift
//  FlashCard African Flags
//
//  Created by ishmael on 6/19/17.
//  Copyright © 2017 ishmael.mthombeni. All rights reserved.
//

import UIKit
import AVFoundation


class CardViewController: UIViewController {
    
    //Mark:- outlets
    
    @IBOutlet weak var countryNameLabel: UILabel!
    
    @IBOutlet weak var capitalCityName: UILabel!
    
    @IBOutlet weak var flagImages: UIImageView!
    
    @IBOutlet weak var populationLabel: UILabel!
    
    @IBOutlet weak var gdpLabel: UILabel!
    
    @IBOutlet weak var currencyLabel: UILabel!
    
    @IBOutlet weak var totalAreaLabel: UILabel!
    
    @IBOutlet weak var governmentTypeLabel: UILabel!
    
    @IBOutlet weak var languageLabel: UILabel!
    
    @IBOutlet weak var capitalCityLabel: UILabel!
    
    
    //Mark:- Properties
    
    var exploreCardNumber: Int?
    
    var myData = CardDeck()
    
    var cardIsRevealed = false
    
    var hideSettings = (name: false, flag:false, info:false)
    
    var sound = AVAudioPlayer()
    
    //Mark:- Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        if exploreCardNumber != nil {
            
            title = "Explore"
            
            myData.randomNum = exploreCardNumber!
            
        }else{
            
            myData.retriveData()
            
        }
       
        updateDisplay()
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard exploreCardNumber == nil else {
            
            return
        }
        
        if cardIsRevealed {
            myData.retriveData()
            playDrawSound()
            
        }else{
            
            playRevealSound()
            
        }
        
        cardIsRevealed = cardIsRevealed ? false : true
        updateDisplay()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let thatWebVC = segue.destination as! webInfoViewController
        
        thatWebVC.name = myData.cardData[myData.randomNum].country
        
    }
    
    
    //Mark:- Display methods
    
    func updateDisplay() {
        
        
        //update the display
        
        if cardIsRevealed || !hideSettings.flag {
            
            flagImages.image = UIImage(named: myData.cardData[myData.randomNum].country)
            
        }else{
            
            flagImages.image = UIImage(named: "AAhiddenflag")
        }
        
        
        if cardIsRevealed || !hideSettings.name {
            
            countryNameLabel.text = myData.cardData[myData.randomNum].country
            
        }else{
            
            countryNameLabel.text = " "
        }
        
        if cardIsRevealed || !hideSettings.info {
            
            capitalCityName.text = "Capital: \(myData.cardData[myData.randomNum].capital)"
            populationLabel.text = "Population: \(myData.cardData[myData.randomNum].population)"
            gdpLabel.text = "GDP: \(myData.cardData[myData.randomNum].gdp)"
            currencyLabel.text = "Currency: \(myData.cardData[myData.randomNum].currency)"
            totalAreaLabel.text = "Area: \(myData.cardData[myData.randomNum].area)"
            governmentTypeLabel.text = "Government: \(myData.cardData[myData.randomNum].government)"
            languageLabel.text = "Language: \(myData.cardData[myData.randomNum].Language)"
            
        }else{
            
            capitalCityName.text = ""
            populationLabel.text = ""
            gdpLabel.text = ""
            totalAreaLabel.text = ""
            currencyLabel.text = ""
            governmentTypeLabel.text = ""
            languageLabel.text = ""
            
        }
        
        if hideSettings == (false,false,false) {
            
            cardIsRevealed = true
        }
        
    }
    
 
    func playDrawSound() {
        let path = Bundle.main.path(forResource: "draw-card", ofType: "mp3")
        playSound(withPath: path!)
    }
    func playRevealSound() {
        let path = Bundle.main.path(forResource: "reveal", ofType: "mp3")
        playSound(withPath: path!)
    }
    
    //Plays any sound that you pass a path to
    func playSound(withPath path: String) {
       
        
        let soundURL = URL(fileURLWithPath: path)
        do {
            try sound = AVAudioPlayer(contentsOf: soundURL)
            sound.prepareToPlay()
            
        } catch {
            
            print("ERROR! Couldn’t load sound file")
        }
        
        sound.play()
    }
    
    
    //////////END SOUND CODE ////////////
   
}

