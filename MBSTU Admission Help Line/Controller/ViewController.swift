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
        
        mbstuLogoImg.image = UIImage(named: Constants.others.logo)
        mbstuLogoImg.sizeToFit()
        Utilities.roundBtnFill(button: enterBtnOutlet)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    //MARK:- Handlers
    @IBAction func enterBtnAction(_ sender: Any) {
        
        let homeVC = self.storyboard?.instantiateViewController(identifier: Constants.storyboardId.HomeViewController) as! HomeViewController
        self.navigationController?.pushViewController(homeVC, animated: true)
       
    
    }
    
}

