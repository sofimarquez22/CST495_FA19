//
//  ViewController.swift
//  tipCalculator
//
//  Created by Sofia Marquez on 8/26/19.
//  Copyright © 2019 Sofia Marquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var Percentage: UISegmentedControl!
    @IBOutlet weak var InputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.10, 0.15]
        let bill = Double(InputField.text!) ?? 0
        let tip = (bill * tipPercent[Percentage.selectedSegmentIndex])
        let total = tip + bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

