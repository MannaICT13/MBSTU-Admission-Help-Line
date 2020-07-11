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
    
    var seatPlanResultA = [seatPlanModel]()
    var seatPlanResultB = [seatPlanModel]()
    var seatPlanResultC = [seatPlanModel]()
    
    //MARK:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()
        
         manageUnitPicker()
         UtilitiesManager()
        
        
        self.seatPlanResultA = Bundle.main.decode("a.json")
        self.seatPlanResultB = Bundle.main.decode("b.json")
        self.seatPlanResultC = Bundle.main.decode("c.json")
        
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
        
        guard let roll = Int((rollTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? "n/a")) else {
            
            print("Invalide Roll")
            self.showAlert(title: "Error Alert!", msg: "Invalid Charecter or number.")
            self.rollLbl.text?.removeAll()
            self.buildingLbl.text?.removeAll()
            self.roomLbl.text?.removeAll()
            self.centerLbl.text?.removeAll()
            self.unitTextField.text?.removeAll()
            self.rollTextField.text?.removeAll()
            return
        }
        
        if (unitTextField.text?.contains("A"))!{
            
            var found = false
            for result in self.seatPlanResultA {
                
                if (result.roll == roll){
                   // print("\(result.center ?? "Not Found")")
                    self.rollLbl.text = "Roll:-\(roll)"
                    self.buildingLbl.text = "Building:-\(result.building ?? "N/A")"
                    self.roomLbl.text = "Room:-\(result.room ?? "N/A")"
                    self.centerLbl.text = "Center:-\(result.center ?? "N/A")"
                    found = true
                    break

                }

            }
            if(found == false){
                print("Not Found!!")
                self.showAlert(title: "Error Message!", msg: "Not Found")
                self.rollLbl.text?.removeAll()
                self.buildingLbl.text?.removeAll()
                self.roomLbl.text?.removeAll()
                self.centerLbl.text?.removeAll()
                self.unitTextField.text?.removeAll()
                self.rollTextField.text?.removeAll()
            }
            
            
        }else if((unitTextField.text?.contains("B"))!){
            var found = false
            for result in self.seatPlanResultB{
                
                
                if (result.roll == roll){
                    // print("\(result.center ?? "Not Found")")
                    self.rollLbl.text = "Roll:-\(roll)"
                    self.buildingLbl.text = "Building:-\(result.building ?? "N/A")"
                    self.roomLbl.text = "Room:-\(result.room ?? "N/A")"
                    self.centerLbl.text = "Center:-\(result.center ?? "N/A")"
                    found = true
                    break
                    
                }
                
                  
                }
            
            if(found == false){
                print("Not Found!!")
                self.showAlert(title: "Error Message!", msg: "Not Found")
                self.rollLbl.text?.removeAll()
                self.buildingLbl.text?.removeAll()
                self.roomLbl.text?.removeAll()
                self.centerLbl.text?.removeAll()
                self.unitTextField.text?.removeAll()
                self.rollTextField.text?.removeAll()
            }
            
            
            }else if ((unitTextField.text?.contains("C"))!){
    
            var found = false
               
            for result in self.seatPlanResultC{
                
                if(result.roll == roll){
                   // print("\(result.center ?? "n/a")")
                    self.rollLbl.text = "Roll:-\(roll)"
                    self.buildingLbl.text = "Building:-\(result.building ?? "N/A")"
                    self.roomLbl.text = "Room:-\(result.room ?? "N/A")"
                    self.centerLbl.text = "Center:-\(result.center ?? "N/A")"
                    found = true
                    break
                }
            }
            if (found == false){
                
                print("Not Found")
                self.showAlert(title: "Error Message!", msg: "Not Found")
                self.rollLbl.text?.removeAll()
                self.buildingLbl.text?.removeAll()
                self.roomLbl.text?.removeAll()
                self.centerLbl.text?.removeAll()
                self.unitTextField.text?.removeAll()
                self.rollTextField.text?.removeAll()
            }
            
        }
        
    
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

extension SeatPlanViewController {
    
    
    func showAlert(title:String,msg: String){
        
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
      
        alert.setValue(NSAttributedString(string: alert.title!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.medium), NSAttributedString.Key.foregroundColor : UIColor.red]), forKey: "attributedTitle")
        
        alert.setValue(NSAttributedString(string: alert.message!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20,weight: UIFont.Weight.medium),NSAttributedString.Key.foregroundColor :UIColor.black]), forKey: "attributedMessage")
        
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
        
        
        
        
    }
    
    
}
