//
//  ViewController.swift
//  Counter
//
//  Created by Vitaly Wexler on 19.07.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterChange: UILabel!
    var counter: Int = 0
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        counterChange.text = "Значение счётчика: \(counter)"
    }

    @IBAction func buttonClick() {
        counter += 1
        counterChange.text = "Значение счётчика: \(counter)"
    }
    
    
}

