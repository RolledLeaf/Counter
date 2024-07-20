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
        counterChange.text = "Значение счётчика: \(counter) \n"
    }

    
    @IBAction func buttonClickPlus(_ sender: Any) {
        counter += 1
        counterChange.text = "Значение счётчика: \(counter)"
        eventStatusText.text.append(" \(currentDateTime) Значение изменено на +1\n")
    }
    
    @IBAction func buttonClickMinus(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            eventStatusText.text.append(" \(currentDateTime) Значение изменено на -1\n")
        } else {
            eventStatusText.text.append(" \(currentDateTime) попытка уменьшить значение счётчика ниже 0\n")
        }
        
        counterChange.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction func buttonCounterReset(_ sender: Any) {
        counter = 0
        counterChange.text = "Значение счётчика: \(counter)"
        eventStatusText.text.append(" \(currentDateTime) Значение сброшено\n")
    }
    
    
    @IBAction func textResetButton(_ sender: Any) {
        eventStatusText.text.removeAll()
    }
    
    
    
    
    
}

