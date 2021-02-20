//
//  ViewController.swift
//  Janken
//
//  Created by Aoba S on 2021/02/20.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var enemyLabel: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var lostLabel: UILabel!
    
    
    var b = 0
    var winCount = 0
    var lostCount = 0

    @IBAction func slider(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        percentLabel.text = String(sliderValue) + "%"
        b = sliderValue
    }
    
    
    @IBAction func guButton(_ sender: Any) {
        let a = Int.random(in: 0 ... 100)
        if a <= b{
            resultLabel.text = "勝ち"
            enemyLabel.text = "チョキ"
            
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
            }
        }
    }
    

    @IBAction func chokiButton(_ sender: Any) {
        let a = Int.random(in: 0 ... 100)
        if a <= b{
            resultLabel.text = "勝ち"
            enemyLabel.text = "パー"
            
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
            }
        }
        
    }
    
    @IBAction func paButton(_ sender: Any) {
        let a = Int.random(in: 0 ... 100)
        if a <= b{
            resultLabel.text = "勝ち"
            enemyLabel.text = "グー"
            
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
            }
        }
    }
    
    
    
    
    
    
    
}

