//
//  SecondViewController.swift
//  Janken
//
//  Created by Aoba S on 2021/02/20.
//

import UIKit

class SecondViewController: UIViewController {
    // UserDefaultsの参照
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func winSwitch(_ sender: UISwitch) {
    if sender.isOn{
        userDefaults.set("on", forKey: "winSwitch")
        userDefaults.synchronize()
        
    }else {
        userDefaults.set("off", forKey: "winSwitch")
        userDefaults.synchronize()
    }
    }
    
    
    @IBAction func lostSwitch(_ sender: Any) {
        
    }
    
    
    @IBAction func goMain(_ sender: Any) {
        self.performSegue(withIdentifier: "toMain", sender: self)
    }
    


}
