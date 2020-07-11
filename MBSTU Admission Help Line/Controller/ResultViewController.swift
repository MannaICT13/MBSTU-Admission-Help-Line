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
    
    var resultA = [ResultMode]()
    var resultB = [ResultMode]()
    var resultC = [ResultMode]()
    
    
    //MARK:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()

        utilitiesManager()
        managePickerView()
        self.resultA = Bundle.main.decode("r_a.json")
        self.resultB = Bundle.main.decode("r_b.json")
        self.resultC = Bundle.main.decode("r_c.json")
        
        
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
        
        guard let roll = Int((rollTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines))!) else {
            print("Invalide Roll")
            self.showAlert(title: "Error Message!", msg: "Invalide Input.")
            rollTextField.text?.removeAll()
            unitTextField.text?.removeAll()
            rollLbl.text?.removeAll()
            positionLbl.text?.removeAll()
            scoreLbl.text?.removeAll()
            statusLbl.text?.removeAll()
            return
        }
        
        guard let unit = unitTextField.text else {
            return
        }
        
        if (unit.contains("A")){
            
            var found : Bool = false
            
            for result in self.resultA{
                
                if(result.roll == roll){
                    print("\(result.position ?? 0)")
                    found = true
                    
                }
            }
           
            if (found == false){
                print("Not Found")
                self.showAlert(title: "Error Message!", msg: "Not Found.")
                rollTextField.text?.removeAll()
                unitTextField.text?.removeAll()
                rollLbl.text?.removeAll()
                positionLbl.text?.removeAll()
                scoreLbl.text?.removeAll()
                statusLbl.text?.removeAll()
            }
            
            
        }else if (unit.contains("B")){
            
            var found : Bool = false
            
            for result in self.resultB{
                
                if(result.roll == roll){
                    print("\(result.position ?? 0)")
                    found = true
                    
                }
            }
            
            if (found == false){
                print("Not Found")
                self.showAlert(title: "Error Message!", msg: "Not Found.")
                rollTextField.text?.removeAll()
                unitTextField.text?.removeAll()
                rollLbl.text?.removeAll()
                positionLbl.text?.removeAll()
                scoreLbl.text?.removeAll()
                statusLbl.text?.removeAll()
            }
            
            
        }else if (unit.contains("C")){
            var found : Bool = false
            
            for result in self.resultC{
                
                if(result.roll == roll){
                    print("\(result.position ?? 0)")
                    found = true
                    
                }
            }
            
            if (found == false){
                print("Not Found")
                self.showAlert(title: "Error Message!", msg: "Not Found.")
                rollTextField.text?.removeAll()
                unitTextField.text?.removeAll()
                rollLbl.text?.removeAll()
                positionLbl.text?.removeAll()
                scoreLbl.text?.removeAll()
                statusLbl.text?.removeAll()
            }
            
        }
        
        
        
        
        
        
        
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

extension ResultViewController {
    
    
    func showAlert(title : String,msg : String){
        
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.setValue(NSAttributedString(string: alert.title!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 25),NSAttributedString.Key.foregroundColor : UIColor.red]), forKey: "attributedTitle")
        alert.setValue(NSAttributedString(string: alert.message!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.black]), forKey: "attributedMessage")
        
        let ok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
        
        
        
    }
    
    
    
}
