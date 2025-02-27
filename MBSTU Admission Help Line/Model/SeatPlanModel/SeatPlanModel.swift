//
//  SeatPlanModel.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

struct seatPlanModel : Codable {
    
    var roll : Int?
    var building : String?
    var room :String?
    var center : String?
    
    enum CodingKeys : String,CodingKey {
        case building = "Building"
        case room  = "Room"
        case roll,center
    }
}
