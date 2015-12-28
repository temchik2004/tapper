//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Admin on 28.12.15.
//  Copyright © 2015 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTXT: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        logoImg.hidden = true
        playBtn.hidden = true
        howManyTapsTXT.hidden = true
        
        tapBtn.hidden = false
        tapsLbl.hidden = false
    }
    
    
}


