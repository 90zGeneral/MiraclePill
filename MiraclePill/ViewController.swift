//
//  ViewController.swift
//  MiraclePill
//
//  Created by Roydon Jeffrey on 11/18/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

//These are the Protocols needed for the operation of the UIPickerView
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //To be affected by code
    @IBOutlet var statePicker: UIPickerView!
    @IBOutlet var statePickerBtn: UIButton!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var addressTextField: UITextField!
    @IBOutlet var cityTextField: UITextField!
    @IBOutlet var buyNow: UIButton!
    
    //All of the US States for the user to choose from. Each state will represent a different row in the statePicker
    let USStates = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusett", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "Nebraska", "Nervada", "New Hamshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "Washington D.C.", "West Virginia", "Wisconsin", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Allow the dataSource & delegate Protocols to communicate to the statePicker. Otherwise, it doesn't know where to get its data from
        statePicker.dataSource = self
        statePicker.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Show the statePicker for the user to select their state
    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
    }
    
    //To determine how many components are needed for the statePicker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    //To determine how many rows the statePicker should have
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
        return USStates.count
    }
    
    //To incorporate all the US States into the statePicker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return USStates[row]
        
    }
    
    //To update the statePickerBtn with the chosen state and then conceal the statePicker
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(USStates[row], for: .normal)
        statePicker.isHidden = true
        buyNow.isHidden = false

    }
    
}

