//
//  ResultViewController.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //MARK:- Properties
    
    @IBOutlet weak var logoImg: UIImageView!
    
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var rollTextField: UITextField!

    @IBOutlet weak var searchBtnOutlet: UIButton!
    
    @IBOutlet weak var rollLbl: UILabel!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var statusLbl: UILabel!
    
    
    
    
    
    
    
    //MARK:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()

        utilitiesManager()
    
    }
    
    
    //MARK:- Handlers
    
    
    func utilitiesManager(){
        
        logoImg.image = UIImage(named: "logo.jpg")
        logoImg.sizeToFit()
        Utilities.borderTextField(textField: rollTextField)
        Utilities.borderTextField(textField: unitTextField)
        Utilities.roundBtnFill(button: searchBtnOutlet)
        
        
    }
    
    @IBAction func searchBtnAction(_ sender: Any) {
        
        
        
    }
    
    


}
