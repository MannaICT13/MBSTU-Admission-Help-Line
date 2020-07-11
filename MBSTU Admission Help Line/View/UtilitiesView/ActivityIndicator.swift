//
//  ActivityIndicator.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import UIKit
class ActivityIndicator{
    
    
    
    static func  showActivityIndicator(uiView : UIView ,vc : UIViewController){
        
        
        let activity = UIActivityIndicatorView()
        activity.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        activity.style = .large
        activity.backgroundColor = .darkGray
        activity.color = .white
        activity.layer.cornerRadius = 6
        activity.center = vc.view.center
        activity.hidesWhenStopped = true
        activity.tag = 1
        uiView.addSubview(activity)
        activity.startAnimating()

        
    }
    
    static func hideActivityIndicator(uiView: UIView){
        let activity : UIActivityIndicatorView = uiView.viewWithTag(1) as! UIActivityIndicatorView
        activity.stopAnimating()
        activity.removeFromSuperview()
        
    }
    
}
