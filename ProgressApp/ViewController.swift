//
//  ViewController.swift
//  ProgressApp
//
//  Created by user198555 on 6/29/21.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    @IBOutlet var labelProgress: UILabel!
        
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet var stepperObject: UIStepper!
    @IBOutlet var activityView: UIActivityIndicatorView!
        override func viewDidLoad() {
            super.viewDidLoad()
            activityView.hidesWhenStopped = true
            progressView.progress = 0
            stepperObject.stepValue = 0.1
            stepperObject.maximumValue = 1.0
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func runButton(_ sender: UIButton) {
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                self.activityView.startAnimating()
                self.counter += 1
                if self.counter >= 5 {
                    self.activityView.stopAnimating()
                    timer.invalidate()
                    self.counter = 0
                }
            }
        }
        @IBAction func stepperChanged(_ sender: UIStepper) {
            labelProgress.text = "Completed \(Int(stepperObject.value * 10)) of 10 tasks"
            progressView.progress = Float(stepperObject.value)
        }
    }

