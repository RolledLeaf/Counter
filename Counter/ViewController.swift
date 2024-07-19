//
//  ViewController.swift
//  Counter
//
//  Created by Vitaly Wexler on 19.07.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterChange: UILabel!
   
    @IBOutlet weak var eventStatusText: UITextView!
    
    var counter: Int = 0
    
    var currentDateTime: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd HH:mm:ss"
        return dateFormatter.string(from: Date())
    }
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        counterChange.text = "Значение счётчика: \(counter)"
    }

    
    @IBAction func buttonClickPlus(_ sender: Any) {
        counter += 1
        counterChange.text = "Значение счётчика: \(counter)"
        eventStatusText.text.append(" \(currentDateTime) Значение изменено на +1")
    }
    
    @IBAction func buttonClickMinus(_ sender: Any) {
        if counter >= 1 {
            counter -= 1
            eventStatusText.text.append(" \(currentDateTime) Значение изменено на -1")
        }
        if counter < 0 {
            eventStatusText.text.append(" \(currentDateTime) попытка уменьшить значение счётчика ниже 0")
        }
        
        counterChange.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction func buttonCounterReset(_ sender: Any) {
        counter = 0
        counterChange.text = "Значение счётчика: \(counter)"
        eventStatusText.text.append(" \(currentDateTime) Значение сброшено")
    }
    
    
    @IBAction func textResetButton(_ sender: Any) {
        eventStatusText.text.removeAll()
    }
    
    
    
    
    
}

