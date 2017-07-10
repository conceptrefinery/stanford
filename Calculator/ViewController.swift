//
//  ViewController.swift
//  Calculator
//
//  Created by Chris Common on 8/6/17.
//  Copyright © 2017 Concept Refinery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel!
    
    
    var userIsInTheMiddleOfTyping: Bool = false

  
    @IBAction func touchDigit(_ sender: UIButton) {
     let digit = sender.currentTitle!
        print("\(digit) was touched" )
        
        if userIsInTheMiddleOfTyping == true {
        let textCurrentlyInDisplay = display.text!
        display!.text = textCurrentlyInDisplay + digit
        print("var is true")
            
        } else {
            display!.text = digit
            print("var is false")
            userIsInTheMiddleOfTyping = true
        }
    
    
    
    
  
    }
    
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        
        set {
            display.text = String(newValue)
        }
    }
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            
            switch mathematicalSymbol {
            case "π":
                displayValue = Double.pi
            case "√":
                let operand = Double(display.text!)
                displayValue = sqrt(displayValue)
            default:
                break
            }
            
        }
        
    }
    
    
    
    
    
}

