//
//  LevelPickerViewController.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import UIKit

class LevelPickerViewController: UIViewController {
    
    @IBOutlet weak var levelPicker: UIPickerView!
    var selectedLevel = ""
    
    let levelManager = LevelManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedLevel = levelManager.level[0]
    }
}

// MARK: - Picker Data Source and Delegate Functions
extension LevelPickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return levelManager.level.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let levelString = levelManager.level[row]
        return levelString
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedLevel = levelManager.level[row]
    }
}
