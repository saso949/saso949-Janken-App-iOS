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
        
        if let winSwitch = userDefaults.string(forKey: "winSwitch"){
            count1 = winSwitch
        }
        
        if let lostSwitch = userDefaults.string(forKey: "lostSwitch"){
            count2 = lostSwitch
        }
        
        if count1 == "on"{
            winSwitch.isOn = true
        }else if count1 == "off"{
            winSwitch.isOn = false
        }
        
        if count2 == "on"{
            lostSwitch.isOn = true
        }else if count2 == "off"{
            lostSwitch.isOn = false
        }
        
        
        

        // Do any additional setup after loading the view.
    }
    
    var count1 = "off"
    var count2 = "off"
    
    
    @IBOutlet weak var winSwitch: UISwitch!
    @IBOutlet weak var lostSwitch: UISwitch!
    
    
    
    @IBAction func winSwitch(_ sender: UISwitch) {
    if sender.isOn{
        userDefaults.set("on", forKey: "winSwitch")
        userDefaults.synchronize()
        
    }else {
        userDefaults.set("off", forKey: "winSwitch")
        userDefaults.synchronize()
        
    }
    }
    
    
    @IBAction func lostSwitch(_ sender: UISwitch) {
        if sender.isOn{
            userDefaults.set("on", forKey: "lostSwitch")
            userDefaults.synchronize()
        }else{
            userDefaults.set("off",forKey: "lostSwitch")
            userDefaults.synchronize()
        }
    }
    
    
    @IBAction func goMain(_ sender: Any) {
        self.performSegue(withIdentifier: "toMain", sender: self)
    }
    


}
