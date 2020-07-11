//
//  VivaResultViewController.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class VivaResultViewController: UIViewController {

    //MARK:- Properties
    
    
    @IBOutlet weak var segmentView: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var vivaResultA = [VivaResultModel]()
    var vivaResultB = [VivaResultModel]()
    var vivaResultC = [VivaResultModel]()
    
    
    //MARK:-  Initializers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        vivaResultA = Bundle.main.decode("v_a.json")
        vivaResultB = Bundle.main.decode("v_b.json")
        vivaResultC = Bundle.main.decode("v_c.json")
        
        self.tableView.register(UINib(nibName: "VivaViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        manageSegmented()
        
        
    }
    
    //MARK:- Handlers
    func manageSegmented(){
        
        segmentView.tintColor = UIColor.black
        segmentView.backgroundColor = UIColor.gray
        segmentView.selectedSegmentTintColor = UIColor.white
        segmentView.addTarget(self, action: #selector(activityLoad), for: .valueChanged)
        
    }
    
   @objc func activityLoad(){
        ActivityIndicator.showActivityIndicator(uiView: view, vc: self)
        UIView.transition(with: self.tableView, duration: 1.5, options: .transitionCrossDissolve, animations: {
            self.tableView.reloadData()
        }) { (true) in
            ActivityIndicator.hideActivityIndicator(uiView: self.view)
        }
    }
    
    
    

}
extension VivaResultViewController : UITableViewDelegate,UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if segmentView.selectedSegmentIndex == 0{
            
            return vivaResultA.count
        }else if segmentView.selectedSegmentIndex == 1{
            
            return vivaResultB.count
        }else if segmentView.selectedSegmentIndex == 2{
           
            return vivaResultC.count
        }
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VivaViewCell
        
        if segmentView.selectedSegmentIndex == 0{
            
          
            
            cell.rollLblCell.text = "ROLL:-\(vivaResultA[indexPath.row].roll ?? 0)"
            cell.positionLblCell.text = "POSITION:-\(vivaResultA[indexPath.row].position ?? 0)"
            cell.subjectLblCell.text = "SUBJECT:-\(vivaResultA[indexPath.row].subject ?? "n/a")"
            cell.statusLblCell.text = "STATUS:-\(vivaResultA[indexPath.row].status ?? "n/a")"
            
            
        }else if segmentView.selectedSegmentIndex == 1{
            
            cell.rollLblCell.text = "ROLL:-\(vivaResultB[indexPath.row].roll ?? 0) "
            cell.positionLblCell.text = "POSITION:-\(vivaResultB[indexPath.row].position ?? 0)"
            cell.subjectLblCell.text = "SUBJECT:-\(vivaResultB[indexPath.row].subject ?? "n/a")"
            cell.statusLblCell.text = "STATUS:-\(vivaResultB[indexPath.row].status ?? "n/a")"
         
            
        }else if segmentView.selectedSegmentIndex == 2{
            
            cell.rollLblCell.text = "ROLL:-\(vivaResultC[indexPath.row].roll ?? 0) "
            cell.positionLblCell.text = "POSITION:-\(vivaResultC[indexPath.row].position ?? 0)"
            cell.subjectLblCell.text = "SUBJECT:-\(vivaResultC[indexPath.row].subject ?? "n/a")"
            cell.statusLblCell.text = "STATUS:-\(vivaResultC[indexPath.row].status ?? "n/a")"
           
            
            
        }
        
       
        return cell
    }
    
}
