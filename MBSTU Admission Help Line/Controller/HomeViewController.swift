//
//  HomeViewController.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 9/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //MARk:- Properties
    
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var seatPlanBtnOutlet: UIButton!
    @IBOutlet weak var resultBtnOutlet: UIButton!
    @IBOutlet weak var vivaBtnOutlet: UIButton!
    @IBOutlet weak var varsityWebBtnOutlet: UIButton!
    
    //MARk:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //MARK:- Handlers

    @IBAction func seatPlanBtnAction(_ sender: Any) {
    }
    @IBAction func resultBtnAction(_ sender: Any) {
    }
    
    @IBAction func vivaBtnAction(_ sender: Any) {
    }
    
    @IBAction func varsityWebBtnAction(_ sender: Any) {
    }
    
    
}
