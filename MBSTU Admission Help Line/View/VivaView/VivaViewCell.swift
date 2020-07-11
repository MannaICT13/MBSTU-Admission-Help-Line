//
//  VivaViewCell.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class VivaViewCell: UITableViewCell {

    //MARK:- Properties
    @IBOutlet weak var rollLblCell: UILabel!
    @IBOutlet weak var positionLblCell: UILabel!
    
    @IBOutlet weak var subjectLblCell: UILabel!
    @IBOutlet weak var statusLblCell: UILabel!
    
 
    //MARK:- Initializers
    override func awakeFromNib() {
        super.awakeFromNib()
       
       
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
