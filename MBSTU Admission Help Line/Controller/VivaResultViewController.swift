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
    
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var searchBtnOutlet: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK:-  Initializers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableView.register(UINib(nibName: "VivaViewCell", bundle: nil), forCellReuseIdentifier: "cell")

     
        Utilities.borderTextField(textField: unitTextField)
        Utilities.roundBtnFill(button: searchBtnOutlet)
    }
    
    //MARK:- Handlers
    
    @IBAction func searchBtnAction(_ sender: Any) {
       
    }
    
    

}
extension VivaResultViewController : UITableViewDelegate,UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VivaViewCell
        
        cell.rollLblCell.text = "111"
        return cell
    }
    
}
