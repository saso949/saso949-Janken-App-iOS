//
//  SecondViewController.swift
//  Janken
//
//  Created by Aoba S on 2021/02/20.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func winSwitch(_ sender: UISwitch) {
    if sender.isOn{
        userDefaults.set("on", forKey: "winSwitch")
        userDefaults.synchronize()
        
        winLabel.isHidden = true
        
    }else {
        userDefaults.set("off", forKey: "winSwitch")
        userDefaults.synchronize()
        
        winLabel.isHidden = false
    }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
