//
//  ViewController.swift
//  tipCalc
//
//  Created by Sankar Dhanushkodi on 3/5/17.
//  Copyright © 2017 Sankar Dhanushkodi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountText: UITextField!

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var customTipText: UITextField!
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.amountText.becomeFirstResponder()
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "default_tip")
        tipPercentLabel.text = String(intValue)
        tipSlider.setValue(Float(intValue), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func recalcTip(_ sender: Any) {
        tipSlider.setValue(Float(lroundf(tipSlider.value)), animated: true)
        tipPercentLabel.text = String(format: "%.0f", tipSlider.value)
        return calculateTip(sender)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let amount = Float(amountText.text!) ?? 0
        let tip = amount * tipSlider.value / 100
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", tip+amount)
    }
}

