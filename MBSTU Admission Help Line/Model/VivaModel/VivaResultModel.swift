//
//  VivaResultModel.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

struct  VivaResultModel :Codable {
    
    var roll :Int?
    var position : Int?
    var subject : String?
    var status : String?
    
    enum CodingKeys : String,CodingKey {
        case roll,position,subject,status
    }
    
}
