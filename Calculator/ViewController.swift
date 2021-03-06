//
//  ViewController.swift
//  Calculator
//
//  Created by Matthew Lock on 22/06/2021.
//

import UIKit

class ViewController: UIViewController {

    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var userInput = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func animate(_ sender: UIButton) {
        sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)

        UIView.animate(withDuration: 2.0,
                                   delay: 0,
                                   usingSpringWithDamping: CGFloat(0.20),
                                   initialSpringVelocity: CGFloat(6.0),
                                   options: UIView.AnimationOptions.allowUserInteraction,
                                   animations: {
                                    sender.transform = CGAffineTransform.identity
            },
                                   completion: { Void in()  }
        )
    }
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    @IBAction func clearButton(_ sender: Any) {
        first = ""
        second = ""
        function = ""
        userInput = ""
        calculatorDisplay.text = "0"
    }
    
    @IBAction func negativepositiveButton(_ sender: Any) {
    }
    @IBAction func percentButton(_ sender: Any) {
    }
    @IBAction func divideButton(_ sender: Any) {
        function = "/"
        first = userInput
        userInput = ""
    }
    @IBAction func multiplyButton(_ sender: Any) {
        function = "*"
        first = userInput
        userInput = ""
    }
    @IBAction func minusButton(_ sender: Any) {
        function = "-"
        first = userInput
        userInput = ""
    }
    @IBAction func addButton(_ sender: Any) {
        function = "+"
        first = userInput
        userInput = ""
    }
    @IBAction func equalButton(_ sender: Any) {
        second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
    
        
        if function == "+" {
            result = firstInput + secondInput
            if result.truncatingRemainder(dividingBy: 1) == 0 {
                calculatorDisplay.text =  String(format: "%.0f", result)
            }
            else {
                calculatorDisplay.text =  String(format: "%.2f", result)
            }
        } else if function == "-" {
            result = firstInput - secondInput
            if result.truncatingRemainder(dividingBy: 1) == 0 {
                calculatorDisplay.text =  String(format: "%.0f", result)
            }
            else {
                calculatorDisplay.text =  String(format: "%.2f", result)
            }
        } else if function == "*" {
            result = firstInput * secondInput
            if result.truncatingRemainder(dividingBy: 1) == 0 {
                calculatorDisplay.text =  String(format: "%.0f", result)
            }
            else {
                calculatorDisplay.text =  String(format: "%.2f", result)
            }
        } else {
            result = firstInput / secondInput
            if result.truncatingRemainder(dividingBy: 1) == 0 {
                calculatorDisplay.text =  String(format: "%.0f", result)
            }
            else {
                calculatorDisplay.text =  String(format: "%.2f", result)
            }
        }
    }
    @IBAction func decimalButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "."
        calculatorDisplay.text! += userInput
        
    }
    @IBAction func zeroButton(_ sender: Any) {
        
        calculatorDisplay.text = ""
        userInput += "0"
        calculatorDisplay.text! += userInput
    }
    @IBAction func oneButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "1"
        calculatorDisplay.text! += userInput
    }
    @IBAction func twoButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "2"
        calculatorDisplay.text! += userInput
    }
    @IBAction func threeButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "3"
        calculatorDisplay.text! += userInput
    }
    @IBAction func fourButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "4"
        calculatorDisplay.text! += userInput
    }
    @IBAction func fiveButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "5"
        calculatorDisplay.text! += userInput
    }
    @IBAction func sixButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "6"
        calculatorDisplay.text! += userInput
    }
    @IBAction func sevenButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "7"
        calculatorDisplay.text! += userInput
    }
    @IBAction func eightButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "8"
        calculatorDisplay.text! += userInput
    }
    @IBAction func nineButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "9"
        calculatorDisplay.text! += userInput
    }
}

