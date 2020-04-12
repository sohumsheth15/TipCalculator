//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sohum Sheth on 4/10/20.
//  Copyright © 2020 Sohum Sheth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bill_field: UITextField!
    @IBOutlet weak var tip_label: UILabel!
    @IBOutlet weak var total_label: UILabel!
    @IBOutlet weak var tip_control: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tap_gesture(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculate_tip(_ sender: Any) {
        let bill = Double(bill_field.text!) ?? 0
        let tip_percentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tip_percentages[tip_control.selectedSegmentIndex]
        let total = bill + tip
        
        tip_label.text = String(format: "$%.2f", tip)
        total_label.text = String(format: "$%.2f", total)
    }
}

