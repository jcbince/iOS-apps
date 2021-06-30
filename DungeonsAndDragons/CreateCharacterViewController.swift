//
//  CreateCharacterViewController.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import UIKit

class CreateCharacterViewController: UIViewController {

    @IBOutlet weak var playerNameTextField: UITextField!
    @IBOutlet weak var characterNameTextField: UITextField!
    @IBOutlet weak var classButton: UIButton!
    @IBOutlet weak var levelButton: UIButton!
    @IBOutlet weak var backgroundButton: UIButton!
    @IBOutlet weak var raceButton: UIButton!
    @IBOutlet weak var alignmentButton: UIButton!
    
    @IBAction func hideKeyboard(_ sender: UITapGestureRecognizer) {
        playerNameTextField.resignFirstResponder()
        characterNameTextField.resignFirstResponder()
    }
    
    @IBAction func didTapCreateButton(_ sender: UIButton) {
        if (playerNameTextField.text?.isEmpty)! || (characterNameTextField.text?.isEmpty)! {
            displayAlert(title: "Whoops!", message: "Make sure you've entered your name and character name!")
        } else {
            displayAlert(title: "Character Created!", message: "Congradulations \(playerNameTextField.text!), you have successfully created your character \(characterNameTextField.text!)!")
        }
    }
    
    @IBAction func doneClassTableView (segue: UIStoryboardSegue) {
        let subClassTableVC = segue.source as! SubClassTableViewController
        classButton.setTitle(subClassTableVC.selectedSubClassText, for: .normal)
        classButton.contentHorizontalAlignment = .left
    }
    
    @IBAction func doneLevelPicker (segue: UIStoryboardSegue) {
        let levelPickerVC = segue.source as! LevelPickerViewController
        levelButton.setTitle(levelPickerVC.selectedLevel, for: .normal)
        levelButton.contentHorizontalAlignment = .left
    }
    @IBAction func doneBackgroundPicker (segue: UIStoryboardSegue) {
        let backgroundPickerVC = segue.source as! BackgroundPickerViewController
        backgroundButton.setTitle(backgroundPickerVC.selectedBackground, for: .normal)
        backgroundButton.contentHorizontalAlignment = .left
    }
    @IBAction func doneRacePicker (segue: UIStoryboardSegue) {
        let racePickerVC = segue.source as! RacePickerViewController
        raceButton.setTitle(racePickerVC.selectedRace, for: .normal)
        raceButton.contentHorizontalAlignment = .left
    }
    @IBAction func doneAlignmentPicker (segue: UIStoryboardSegue) {
        let alignmentPickerVC = segue.source as! AlignmentPickerViewController
        alignmentButton.setTitle(alignmentPickerVC.selectedAlignment, for: .normal)
        alignmentButton.contentHorizontalAlignment = .left
    }

    @IBAction func cancelPicker (segue: UIStoryboardSegue) {
    }
    
    func displayAlert(title: String,message: String) {
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let controller = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
}
