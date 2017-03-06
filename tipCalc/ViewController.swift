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
        setupSlider()
        
    }

    // function to setup the initial value for slider (when the view first loads and when the view reappears after settings are changed
    func setupSlider() {
        let defaults = UserDefaults.standard
        let tipValue = defaults.integer(forKey: "default_tip")
        tipPercentLabel.text = String(tipValue)
        tipSlider.setValue(Float(tipValue), animated: true)
        print("Default tip value being updated in slider:\(tipValue) with tipSlider value:\(String(tipSlider.value))")
        calcTip()
    }

    // refactoring calculate to separtae method since it is called directly rom viewWillAppear as well as from events on the view
    func calcTip() {
        let amount = Float(amountText.text!) ?? 0
        let tip = amount * tipSlider.value / 100
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", tip+amount)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupSlider()
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
        calcTip()
    }
}

