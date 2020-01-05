//
//  ViewController.swift
//  Calculator
//
//  Created by Tsen on 2019/12/24.
//  Copyright © 2019 Tsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func activateBtnZero(_ sender:UIButton){
        Result.text?.append("0")
    }
    @IBAction func activateBtnOne(_ sender:UIButton){
        Result.text?.append("1")
    }
    @IBAction func activateBtnTwo(_ sender:UIButton){
        Result.text?.append("2")
    }
    @IBAction func activateBtnThree(_ sender:UIButton){
        Result.text?.append("3")
    }
    @IBAction func activateBtnFour(_ sender:UIButton){
        Result.text?.append("4")
    }
    @IBAction func activateBtnFive(_ sender:UIButton){
        Result.text?.append("5")
    }
    @IBAction func activateBtnSix(_ sender:UIButton){
        Result.text?.append("6")
    }
    @IBAction func activateBtnSeven(_ sender:UIButton){
        Result.text?.append("7")
    }
    @IBAction func activateBtnEight(_ sender:UIButton){
        Result.text?.append("8")
    }
    @IBAction func activateBtnNine(_ sender:UIButton){
        Result.text?.append("9")
    }
    
    @IBAction func activateBtnPlus(_ sender:UIButton){
        Result.text?.append("+")
    }
    @IBAction func activateBtnMinus(_ sender:UIButton){
        Result.text?.append("-")
    }
    @IBAction func activateBtnMutiply(_ sender:UIButton){
        Result.text?.append("*")
    }
    @IBAction func activateBtnDivide(_ sender:UIButton){
        Result.text?.append("/")
    }
    @IBAction func activateBtnDot(_ sender:UIButton){
        Result.text?.append(".")
    }
    @IBAction func activateBtnBack(_ sender:UIButton){
        if Result.text!.count > 0 {
            let resultStrDelete = Result.text?.prefix(Result.text!.count - 1)
            Result.text = String(resultStrDelete ?? "Error")
        }else{
            return
        }
    }
    @IBAction func activateBtnAC(_ sender:UIButton){
        Result.text = ""
    }
    
    @IBAction func activateBtnCalculate(_ sender:UIButton){
        let str:String? = Result.text
        
        do{
            try CatchException.catchException {
                let answer:Double = self.calculate(s: str!)
                self.Result.text = "\(String(answer))"
            }
        }catch{
            self.Result.text = ""
        }
    }
    
    @IBAction func activateBtnSqrt(_ sender:UIButton){
        let str:String? = Result.text
        
        do{
            try CatchException.catchException {
                let answer:Double = self.calculate(s: str!)
                let sqrtRoot = answer.squareRoot()
                
                self.Result.text = "\(sqrtRoot)"
            }
        }catch{
            self.Result.text = ""
        }
    }
    
    @IBAction func activateBtnPercent(_ sender:UIButton){
        let str:String? = Result.text
        
        do{
            try CatchException.catchException {
                let answer:Double = self.calculate(s: str!)
                let percent = answer / 100
                
                self.Result.text = "\(percent)"
            }
        }catch{
            self.Result.text = ""
        }
    }
    
    func calculate(s:String) -> Double {
        let exp:NSExpression = NSExpression(format:s)
        let answer:Double = exp.expressionValue(with: nil,context:nil) as? Double ?? 0

        return answer
    }
}

