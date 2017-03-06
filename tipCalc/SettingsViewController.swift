//
//  SettingsViewController.swift
//  tipCalc
//
//  Created by Sankar Dhanushkodi on 3/5/17.
//  Copyright © 2017 Sankar Dhanushkodi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipText: UITextField!
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "default_tip")
        defaultTipText.text = String(intValue)
        defaultTipText.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let defaultTipPercent = Int(defaultTipText.text!) ?? 20
        
        // save default tip percent
        let defaults = UserDefaults.standard
        defaults.set(defaultTipPercent, forKey: "default_tip")
        defaults.synchronize()
        print("Saved default tip as:\(defaultTipText.text)")
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
