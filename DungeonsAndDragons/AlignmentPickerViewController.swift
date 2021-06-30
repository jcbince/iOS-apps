//
//  AlignmentPickerViewController.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import UIKit

class AlignmentPickerViewController: UIViewController {
    
    @IBOutlet weak var alignmentPicker: UIPickerView!
    var selectedAlignment = ""
    
    let alignmentManager = AlignmentManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedAlignment = alignmentManager.alignment[0]
    }
}

// MARK: - Picker Data Source and Delegate Functions
extension AlignmentPickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return alignmentManager.alignment.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let alignmentName = alignmentManager.alignment[row]
        return alignmentName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedAlignment = alignmentManager.alignment[row]
    }
}
