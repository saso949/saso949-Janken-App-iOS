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
    
    var b = 0
    
    
    
    

    @IBAction func slider(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        percentLabel.text = String(sliderValue) + "%"
        b = sliderValue
    }
    
    
}

