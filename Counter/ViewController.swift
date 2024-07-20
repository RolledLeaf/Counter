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

    
    @IBAction func buttonClickPlus(_ sender: UIButton) {
        counter += 1
        counterChange.text = "Значение счётчика: \(counter)"
        eventStatusText.text.append(" \(currentDateTime) Значение изменено на +1\n")
        
        UIView.animate(withDuration: 0.1, // длительность анимации
                          animations: {
               sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9) // уменьшение кнопки
           }, completion: { _ in
               UIView.animate(withDuration: 0.1) {
                   sender.transform = CGAffineTransform.identity // возврат к исходному размеру
               }
           })
        
    }
    
    @IBAction func buttonClickMinus(_ sender: UIButton) {
        if counter > 0 {
            counter -= 1
            eventStatusText.text.append(" \(currentDateTime) Значение изменено на -1\n")
        } else {
            eventStatusText.text.append(" \(currentDateTime) попытка уменьшить значение счётчика ниже 0\n")
        }
        
        counterChange.text = "Значение счётчика: \(counter)"
        
        UIView.animate(withDuration: 0.1, // длительность анимации
                          animations: {
               sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9) // уменьшение кнопки
           }, completion: { _ in
               UIView.animate(withDuration: 0.1) {
                   sender.transform = CGAffineTransform.identity // возврат к исходному размеру
               }
           })
    }
    
    @IBAction func buttonCounterReset(_ sender: UIButton) {
        counter = 0
        counterChange.text = "Значение счётчика: \(counter)"
        eventStatusText.text.append(" \(currentDateTime) Значение сброшено\n")
        
        UIView.animate(withDuration: 0.1, // длительность анимации
                          animations: {
               sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9) // уменьшение кнопки
           }, completion: { _ in
               UIView.animate(withDuration: 0.1) {
                   sender.transform = CGAffineTransform.identity // возврат к исходному размеру
               }
           })
    }
    
    
    
    @IBAction func textResetButton(_ sender: Any) {
        eventStatusText.text.removeAll()
    }
    
    
    
    
    
}

