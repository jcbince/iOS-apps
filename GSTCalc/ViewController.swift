//
//  ViewController.swift
//  GSTCalc
//
//  Created by user198555 on 5/19/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var priceInput: UITextField!
    
    @IBOutlet var taxGST: UITextField!
    
    @IBOutlet var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = ""
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculateTax(_ sender: UIButton) {
        let price  = Double(priceInput.text!)!
        let taxGST = Double(taxGST.text!)!
        
        let totalSalestax = price * taxGST
        let totalPrice = price + totalSalestax
        
        totalLabel.text = "\(totalPrice)"
    }
        
    
    

}

