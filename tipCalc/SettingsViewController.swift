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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "default_tip")
        defaultTipText.text = String(intValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let defaults = UserDefaults.standard
        defaults.set(Int(defaultTipText.text!) ?? 20, forKey: "default_tip")
        defaults.synchronize()
        print("Saved tip as:\(defaultTipText.text)")
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
