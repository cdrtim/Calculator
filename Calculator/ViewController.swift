//
//  ViewController.swift
//  Calculator
//
//  Created by Pham Ngoc Hai on 11/15/16.
//  Copyright © 2016 Mystudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl_Result: UILabel!
    @IBOutlet weak var txtField_input: UITextField!
    
    @IBOutlet weak var distanceBtTxFandLbl: NSLayoutConstraint!
    @IBOutlet weak var distanceBtLblAndMiddlerView: NSLayoutConstraint!
    // tao 1 vai bien: var
    var isTappingNumber: Bool = false
    var isEndOperator: Bool = true
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var operation: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtField_input.isUserInteractionEnabled = false
        
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        updateConstraints()
    }
    
    
    func updateConstraints()
        -> Void {
            let screen = UIScreen.main.bounds.size.height / 667
            distanceBtLblAndMiddlerView.constant = UIScreen.main.bounds.size.height > 480 ?
                distanceBtLblAndMiddlerView.constant * screen : distanceBtLblAndMiddlerView.constant * 0.1
            distanceBtTxFandLbl.constant = UIScreen.main.bounds.size.height > 480 ?
                distanceBtTxFandLbl.constant * screen : distanceBtTxFandLbl.constant * 0.1
            
    }
    
    // actions
    
    @IBAction func ac_Number(_ sender: UIButton) {
        
        let number = sender.currentTitle
        if isTappingNumber == true {
            txtField_input.text = txtField_input.text! + number!
            
        }else{
            txtField_input.text = number
            isTappingNumber = true
        }
        
        
    }
    
    
    @IBAction func ac_Operator(_ sender: UIButton) {
        operation = sender.currentTitle!
        if let inputOperation = Double(txtField_input.text!)
        {
            if isEndOperator
            {
                firstNumber = inputOperation
                isEndOperator = false
            }else{
                firstNumber = Double(lbl_Result.text!)!
                txtField_input.text = "\(firstNumber)"
            }
            
            
        }else{
            print("Ban can nhap so vao de tinh toan")
        }
        
        isTappingNumber = false
        if operation == "%"
        {
            ac_Equal(sender)
        }else  if   (operation == "+/-"){
            ac_Equal(sender)
            
        }
        
    }
    
    
    @IBAction func ac_Equal(_ sender: UIButton) {
        isTappingNumber = false
        var result: Double = 0
        
        if let realSecondNumber = Double(txtField_input.text!){
            secondNumber = realSecondNumber
            
            
        }
        switch operation {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "/":
            result = firstNumber / secondNumber
        case "%":
            result = firstNumber / 100
        case "+/-":
            if firstNumber < 0 {
                firstNumber = fabs(firstNumber)
                result = firstNumber
            }else{
                firstNumber = -1 * firstNumber
                result = firstNumber
                
            }
            txtField_input.text = "\(result)"
        default:
            print("sai cu phap")
            
        }
        
        lbl_Result.text = "\(result)"
        
        
    }
    
    @IBAction func but_AC(_ sender: UIButton) {
        firstNumber = 0
        secondNumber = 0
        txtField_input.text = ""
        lbl_Result.text = "0"
        isEndOperator = true
        
        
        
    }
    
}

