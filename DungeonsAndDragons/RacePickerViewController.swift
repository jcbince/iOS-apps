//
//  RacePickerViewController.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import UIKit

class RacePickerViewController: UIViewController {
    
    @IBOutlet weak var racePicker: UIPickerView!
    var selectedRace = ""
    
    let raceManager = RaceManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedRace = raceManager.races[0]
    }
}

// MARK: - Picker Data Source and Delegate Functions
extension RacePickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return raceManager.races.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let raceName = raceManager.races[row]
        return raceName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedRace = raceManager.races[row]
    }
}
