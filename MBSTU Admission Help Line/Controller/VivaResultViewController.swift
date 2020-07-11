//
//  VivaResultViewController.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class VivaResultViewController: UIViewController {

    //MARK:- Properties
    
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var searchBtnOutlet: UIButton!
    
    
    
    //MARK:-  Initializers
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Utilities.borderTextField(textField: unitTextField)
        Utilities.roundBtnFill(button: searchBtnOutlet)
    }
    
    //MARK:- Handlers
    
    @IBAction func searchBtnAction(_ sender: Any) {
       
    }
    
    

}
