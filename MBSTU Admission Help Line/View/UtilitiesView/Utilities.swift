//
//  Utilities.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 9/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import UIKit

class Utilities{
    
    
    //MARK:- Handlers
    
    public static func roundBtnFill(button: UIButton){
        
        button.backgroundColor = UIColor.lightGray
        button.clipsToBounds = true
        button.layer.borderWidth = 2.0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 15.0

        
    }
    
    
    
    
    
}
