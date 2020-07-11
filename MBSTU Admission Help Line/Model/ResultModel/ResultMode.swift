//
//  ResultMode.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

struct ResultMode {
    var roll : Int?
    var position : String?
    var score : Double?
    var status : String?
    
    
    enum CodingKeys : String,CodingKey {
        case roll,position,score,status
    }
    
}
