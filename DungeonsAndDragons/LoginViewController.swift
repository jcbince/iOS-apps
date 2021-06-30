//
//  LoginViewController.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-21.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    @IBAction func login(_ sender: Any) {
        if (usernameTextField.text?.isEmpty)! {
            displayAlert(title: "Whoops!", message: "Enter a username")
        } else if (passwordTextField.text?.isEmpty)! {
            displayAlert(title: "Whoops!", message: "Enter a password")
        }
        else {
            if rememberMeSwitch.isOn {
                let username = usernameTextField.text
                let password = passwordTextField.text
                let defaults = UserDefaults.standard
                defaults.set(username, forKey: "username_preference")
                defaults.set(password, forKey: "password_preference")
                defaults.set(true, forKey: "remember_preference")
                defaults.synchronize()
            } else {
                let defaults = UserDefaults.standard
                defaults.set("", forKey: "username_preference")
                defaults.set("", forKey: "password_preference")
                defaults.set(false, forKey: "remember_preference")
                defaults.synchronize()
            }
        }
    }
    
    @IBAction func hideKeyboard(_ sender: UITapGestureRecognizer) {
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let defaults = UserDefaults.standard
        let username = defaults.string(forKey: "username_preference")
        let password = defaults.string(forKey: "password_preference")
        let rememberMe = defaults.bool(forKey: "remember_preference")
        
        usernameTextField.text = username
        passwordTextField.text = password
        rememberMeSwitch.setOn(rememberMe, animated: true)
    }
    
    func displayAlert(title: String,message: String) {
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let controller = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }

}
