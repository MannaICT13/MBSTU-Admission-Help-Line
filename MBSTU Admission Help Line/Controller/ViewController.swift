//
//  ViewController.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 9/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK:- Properties
    @IBOutlet weak var mbstuLogoImg: UIImageView!
    
    @IBOutlet weak var enterBtnOutlet: UIButton!
    
    //MARK:- Initializzers
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mbstuLogoImg.image = UIImage(named: "logo.png")
        mbstuLogoImg.sizeToFit()
        Utilities.roundBtnFill(button: enterBtnOutlet)
    }

    
    //MARK:- Handlers
    @IBAction func enterBtnAction(_ sender: Any) {
    }
    
}

