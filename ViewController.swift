//
//  ViewController.swift
//  Calculate
//
//  Created by Владислав Вишняков on 29.04.2021.
//

import UIKit

class ViewController: UIViewController {

    var firsttext: Double = 0
    var current: Double {
        get {
            return Double(labelNumbers.text!)!
        }
        set {
            labelNumbers.text = "\(newValue)"
            typing = false
        }
    }
    var secondtext: Double = 0
    var operatorss: String = ""
    var typing = false
    @IBOutlet weak var labelNumbers: UILabel!
    @IBAction func clearAC(_ sender: UIButton) {
        secondtext = 0
        operatorss = ""
        firsttext = 0
        labelNumbers.text = "0"
        typing = false
    }
    
    @IBAction func numAction(_ sender: UIButton) {
        let number = sender.currentTitle!
        if typing {
        labelNumbers.text = labelNumbers.text! + number
        } else {
            labelNumbers.text = number
            typing = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func plus(operation: (Double, Double) -> Double) {
        current = operation(firsttext,secondtext)
        typing = false
    }
    
    @IBAction func operators(_ sender: UIButton) {
        operatorss = sender.currentTitle!
        firsttext = current
        typing = false
    }
    
    @IBAction func result(_ sender: UIButton) {
        if typing {
            secondtext = current
        }
        switch operatorss {
        case "+":
            plus{$0 + $1}
        case "-":
            plus{$0 - $1}
        case "*":
            plus{$0 * $1}
        case "/":
            plus{$0 / $1}
        default: break

        }
    }
    

}

