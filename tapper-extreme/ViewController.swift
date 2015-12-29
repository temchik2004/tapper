//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Admin on 28.12.15.
//  Copyright © 2015 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var maxTaps: UInt = 0
    var currentTaps: UInt = 0
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTXT: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapsTXT.text != nil && howManyTapsTXT.text != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTXT.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = UInt(howManyTapsTXT.text!)!
            currentTaps = 0
            
            updateTabsLbl()
        }
    }
    
    @IBAction func onCoinTapped(sender: UIButton!){
        ++currentTaps
        updateTabsLbl()
        if isGameOver(){
            restartGame()
        }

    }
    
    func isGameOver() -> Bool {
        return currentTaps >= maxTaps
    }
    
    func updateTabsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTXT.text = ""
        
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTXT.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    
}


