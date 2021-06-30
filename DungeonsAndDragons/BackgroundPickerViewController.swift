//
//  BackgroundPickerViewController.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import UIKit

class BackgroundPickerViewController: UIViewController {
    
    @IBOutlet weak var backgroundPicker: UIPickerView!
    var selectedBackground = ""
    
    let backgroundManager = BackgroundManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedBackground = backgroundManager.background[0]
    }
}

// MARK: - Picker Data Source and Delegate Functions
extension BackgroundPickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return backgroundManager.background.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let backgroundName = backgroundManager.background[row]
        return backgroundName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedBackground = backgroundManager.background[row]
    }
}
