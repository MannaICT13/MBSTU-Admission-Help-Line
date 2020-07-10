//
//  SeatPlanViewController.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 10/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class SeatPlanViewController: UIViewController {

    
    //MARK:- Properties
    @IBOutlet weak var logoImg: UIImageView!
    
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var rollTextField: UITextField!
    @IBOutlet weak var searchBtnOutlet: UIButton!
    @IBOutlet weak var rollLbl: UILabel!
    
    @IBOutlet weak var buildingLbl: UILabel!
    @IBOutlet weak var roomLbl: UILabel!
    @IBOutlet weak var centerLbl: UILabel!
    
    
     var unitPicker : UIPickerView!
     var unitArray : [String] = ["A","B","C"]
    
    //MARK:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()
        
         manageUnitPicker()
         UtilitiesManager()
    }
    
    //MARK:- Handlers
    
       
        func manageUnitPicker(){
            
            unitPicker = UIPickerView()
            
            unitPicker.delegate = self
            unitPicker.dataSource = self
            
            
            let toolBar = UIToolbar()
            toolBar.sizeToFit()
            
            let done = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(action))
            toolBar.setItems([done], animated: true)
            
            unitTextField.inputView = unitPicker
            unitTextField.inputAccessoryView = toolBar
         
            
        }
        
        
        @objc func action(){
            
            self.view.endEditing(true)
            
        }
    
    
    func UtilitiesManager(){
        
        logoImg.image = UIImage(named: "logo.jpg")
        logoImg.sizeToFit()
        
        Utilities.roundBtnFill(button: searchBtnOutlet)
        Utilities.borderTextField(textField: rollTextField)
        Utilities.borderTextField(textField: unitTextField)
        
    }
    
    @IBAction func searchButtonAction(_ sender: Any) {
        
    }
    
    
    
    


}

extension SeatPlanViewController : UIPickerViewDelegate,UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return unitArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if unitTextField.isFirstResponder{
            return unitArray[row]
        }
        return nil
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if unitTextField.isFirstResponder{
            let newUnit = unitArray[row]
            unitTextField.text = newUnit
        }
        
        
    }
    
    
}
