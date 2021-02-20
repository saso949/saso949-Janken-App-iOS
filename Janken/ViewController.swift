//
//  ViewController.swift
//  Janken
//
//  Created by Aoba S on 2021/02/20.
//

import UIKit

class ViewController: UIViewController {
    // UserDefaultsの参照
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let win = userDefaults.string(forKey: "win") {
            winLabel.text = "勝った回数" + win + "回"
            winCount = userDefaults.integer(forKey: "win")
        }
        
        if let lost = userDefaults.string(forKey: "lost"){
            lostLabel.text = "負けた回数" + lost + "回"
            lostCount = userDefaults.integer(forKey: "lost")
        }
        
        if let _ = userDefaults.string(forKey: "slider"){
            slider.value = userDefaults.float(forKey: "slider")
            
            let sliInt = userDefaults.integer(forKey: "slider")
            percentLabel.text =  String(sliInt) + "%"
            b = sliInt
        }
        
        if let winSwitch = userDefaults.string(forKey: "winSwitch"){
            count1 = winSwitch
        }
        
        if count1 == "on" {
            winLabel.isHidden = false
        }else if count1 == "off"{
            winLabel.isHidden = true
        }
        
        
    }
    
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var enemyLabel: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var lostLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    var b = 0
    var winCount = 0
    var lostCount = 0
    var count1 = "off"
    var count2 = "off"
    

    @IBAction func slider(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        percentLabel.text = String(sliderValue) + "%"
        b = sliderValue
        
        userDefaults.set(b, forKey: "slider")
        userDefaults.synchronize()
    }
    
    
    @IBAction func guButton(_ sender: Any) {
        let a = Int.random(in: 0 ... 100)
        if a <= b{
            resultLabel.text = "勝ち"
            enemyLabel.text = "チョキ"
            
            winCount += 1
            winLabel.text = "勝った回数" + String(winCount) + "回"
            userDefaults.set(winCount, forKey: "win")
            userDefaults.synchronize()
            
        }else if a >= b {
            let c = 100 - b
            let d = c / 2
            let e = Int.random(in: 0 ... c)
            
            if e >= d{
                resultLabel.text = "アイコ"
                enemyLabel.text = "グー"
            }else if e <= d{
                resultLabel.text = "負け"
                enemyLabel.text = "パー"
                
                lostCount += 1
                lostLabel.text = "負けた回数" + String(lostCount) + "回"
                userDefaults.set(lostCount, forKey: "lost")
                userDefaults.synchronize()
            }
        }
    }
    

    @IBAction func chokiButton(_ sender: Any) {
        let a = Int.random(in: 0 ... 100)
        if a <= b{
            resultLabel.text = "勝ち"
            enemyLabel.text = "パー"
            
            winCount += 1
            winLabel.text = "勝った回数" + String(winCount) + "回"
            userDefaults.set(winCount, forKey: "win")
            userDefaults.synchronize()
            
        }else if a >= b {
            let c = 100 - b
            let d = c / 2
            let e = Int.random(in: 0 ... c)
            if e >= d{
                resultLabel.text = "アイコ"
                enemyLabel.text = "チョキ"
            } else if e <= d {
                resultLabel.text = "負け"
                enemyLabel.text = "グー"
                
                lostCount += 1
                lostLabel.text = "負けた回数" + String(lostCount) + "回"
                userDefaults.set(lostCount, forKey: "lost")
                userDefaults.synchronize()

            }
        }
        
    }
    
    @IBAction func paButton(_ sender: Any) {
        let a = Int.random(in: 0 ... 100)
        if a <= b{
            resultLabel.text = "勝ち"
            enemyLabel.text = "グー"
            
            
            winCount += 1
            winLabel.text = "勝った回数" + String(winCount) + "回"
            userDefaults.set(winCount, forKey: "win")
            userDefaults.synchronize()
            
        }else if a >= b {
            let c = 100 - b
            let d = c / 2
            let e = Int.random(in: 0 ... c)
            if e >= d{
                resultLabel.text = "アイコ"
                enemyLabel.text = "パー"
            } else if e <= d {
                resultLabel.text = "負け"
                enemyLabel.text = "チョキ"
                
                lostCount += 1
                lostLabel.text = "負けた回数" + String(lostCount) + "回"
                userDefaults.set(lostCount, forKey: "lost")
                userDefaults.synchronize()

            }
        }
    }
    
    
    
    @IBAction func resetButton(_ sender: Any) {
        lostLabel.text = "負けた回数0回"
        winLabel.text = "勝った回数0回"
        
        winCount = 0
        userDefaults.set(winCount, forKey: "win")
        userDefaults.synchronize()
        
        
        lostCount = 0
        userDefaults.set(lostCount, forKey: "lost")
        userDefaults.synchronize()
    }
    
    
    
    
    @IBAction func settingButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toSecond", sender: self)
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
    
    
    
    
    
}

