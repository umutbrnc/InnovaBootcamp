//
//  ViewController.swift
//  Homework5
//
//  Created by chvck on 23.09.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblScreen: UILabel!
    
    var firstNumber : Int?
    var secondNumber : Int?
    var result : Int?
    var txtNumber = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    @IBAction func btnClear(_ sender: Any) {

        lblScreen.text = "0"
        txtNumber.removeAll()
        
    }
    
    
    
    @IBAction func btnMinus(_ sender: Any) {
    }
    
    
    
    @IBAction func btnPlus(_ sender: Any) {
        
        let current = txtNumber.map {String($0)}.joined()
        if let firstNumber = Int(current){
            self.firstNumber = firstNumber
        }
        txtNumber.removeAll()

    }
    
    
    
    
    @IBAction func btnEqual(_ sender: Any) {
        
        let current = txtNumber.map {String($0)}.joined()
        if let secondNumber = Int(current){
            self.secondNumber = secondNumber
            self.result = self.firstNumber! + self.secondNumber!
            lblScreen.text = String(result!)
        }
        txtNumber.removeAll()
    }
    
    
    
    
    
    
    
    @IBAction func btn0(_ sender: Any) {
        txtNumber.append("0")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    @IBAction func btn1(_ sender: Any) {
        txtNumber.append("1")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    @IBAction func btn2(_ sender: Any) {
        txtNumber.append("2")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    @IBAction func btn3(_ sender: Any) {
        txtNumber.append("3")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    @IBAction func btn4(_ sender: Any) {
        txtNumber.append("4")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    @IBAction func btn5(_ sender: Any) {
        txtNumber.append("5")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    @IBAction func btn6(_ sender: Any) {
        txtNumber.append("6")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    @IBAction func btn7(_ sender: Any) {
        txtNumber.append("7")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    @IBAction func btn8(_ sender: Any) {
        txtNumber.append("8")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    @IBAction func btn9(_ sender: Any) {
        txtNumber.append("9")
        lblScreen.text = txtNumber.map{String($0)}.joined()
    }
    
    

}

