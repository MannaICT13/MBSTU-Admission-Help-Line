//
//  ResultViewController.swift
//  MBSTU Admission Help Line
//
//  Created by Md Khaled Hasan Manna on 11/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //MARK:- Properties
    
    @IBOutlet weak var logoImg: UIImageView!
    
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var rollTextField: UITextField!

    @IBOutlet weak var searchBtnOutlet: UIButton!
    
    @IBOutlet weak var rollLbl: UILabel!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var statusLbl: UILabel!
    
    
    var unitPicker : UIPickerView!
    
    var  arrayOfUnit : [String] = ["A","B","C"]
    
    
    
    
    //MARK:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()

        utilitiesManager()
        managePickerView()
    
    }
    
    
    //MARK:- Handlers
    
    
    func utilitiesManager(){
        
        logoImg.image = UIImage(named: "logo.jpg")
        logoImg.sizeToFit()
        Utilities.borderTextField(textField: rollTextField)
        Utilities.borderTextField(textField: unitTextField)
        Utilities.roundBtnFill(button: searchBtnOutlet)
        
        
    }
    
    
    func managePickerView(){
        
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
    
    
    
    @IBAction func searchBtnAction(_ sender: Any) {
        
        
        
    }
    
    


}
extension ResultViewController : UIPickerViewDelegate,UIPickerViewDataSource {
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfUnit.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if unitTextField.isFirstResponder{
            return arrayOfUnit[row]
        }
        return nil
        
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if unitTextField.isFirstResponder{
            let newUnit = arrayOfUnit[row]
            unitTextField.text = newUnit
        }
        
    }
    
    
    
    
    
}
