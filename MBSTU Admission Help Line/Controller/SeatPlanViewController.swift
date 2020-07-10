//
//  SeatPlanViewController.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 10/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class SeatPlanViewController: UIViewController {

    
    //MARK:- Properties
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var unitTextField: UITextField!
    
    @IBOutlet weak var rollTextField: UITextField!
    
    @IBOutlet weak var searchBtnOutlet: UIButton!
    
    @IBOutlet weak var rollLbl: UILabel!
    
    @IBOutlet weak var buildingLbl: UILabel!
    
    @IBOutlet weak var roomLbl: UILabel!
    
    @IBOutlet weak var centerLbl: UILabel!
    
    //MARK:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK:- Handlers
    
    @IBAction func searchButtonAction(_ sender: Any) {
    }
    
    


}
