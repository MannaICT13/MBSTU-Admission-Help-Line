//
//  Constants.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

enum Constants {


    enum bundleConstants  {
        
     static let  result_a = "r_a.json"
     static let  result_b = "r_b.json"
     static let  result_c = "r_c.json"
    
     static let  seat_a = "a.json"
     static let seat_b = "b.json"
     static let seat_c = "c.json"
 
     static let viva_a = "v_a.json"
     static let viva_b = "v_b.json"
     static let  viva_c = "v_c.json"
    }
    
    enum storyboardId{
        
        static let HomeViewController = "HomeViewController"
        static let SeatPlanViewController = "SeatPlanViewController"
        static let ResultViewController = "ResultViewController"
        static let VivaResultViewController = "VivaResultViewController"

        
    }
    enum others{
        static let mbstu_url = "https://mbstu.ac.bd/"
        static let logo = "logo.jpg"
    }
    
}
