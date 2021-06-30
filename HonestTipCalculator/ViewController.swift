//
//  ViewController.swift
//  HonestTipCalculator
//
//  Created by user198555 on 5/27/21.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets connected
    //Bill amount
    @IBOutlet weak var amountBeforeTaxTextField: UITextField!
    //Tip Percentage Label for label slider change
    @IBOutlet weak var tipPercentageLabel: UILabel!
    //tip silder
    @IBOutlet weak var tipPercentageSlider: UISlider!
    
    //people slider + label
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    //reconnect after label change
    //show value
    @IBOutlet weak var eachPersonAmountLabel:UILabel!
    
    @IBOutlet weak var totalResultLabel: UILabel!

    //min tipPercent: 10
    var tipCalculator = TipCalculator(amountBeforeTax: 0, tipPercentage: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        amountBeforeTaxTextField.becomeFirstResponder()
    }
    
    //refactor to calculateBill()
    func calculateBill()
    {
        tipCalculator.tipPercentage = Double(tipPercentageSlider.value) / 100.0
        tipCalculator.amountBeforeTax = (amountBeforeTaxTextField.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        updateUI()
    }
    
    func updateUI()
    {
        //updates the numbers
        totalResultLabel.text = String(format: "$%0.2f", tipCalculator.totalAmount)
        let numberOfPeople: Int = Int(numberOfPeopleSlider.value)
        //format for 2 decimal points
        eachPersonAmountLabel.text = String(format: "$%0.2f", tipCalculator.totalAmount / Double(numberOfPeople))
    }
    
    //Mark: - Target / Action
    //use of interpolation
    @IBAction func tipSliderValueChanged(_ sender: UISlider) {
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int(tipPercentageSlider.value))
        calculateBill()
    }
    

    @IBAction func numberOfPeopleSliderValueChanged(_ sender: UISlider) {
        
        numberOfPeopleLabel.text = "People: \(Int(numberOfPeopleSlider.value))"
        calculateBill()
    }
    
    @IBAction func amountBeforeTaxTextFieldChanged(_ sender: UITextField) {
        calculateBill()
    }
    
    
    @IBAction func amountBeforeTaxTextfieldChanged(_ sender: UITextField)
    {
         
        
    }
    
}

