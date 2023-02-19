//
//  ViewController.swift
//  CountTest
//
//  Created by あらいゆめ on 2023/02/13.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var timerlabel: UILabel!
    @IBOutlet var sakelabel: UILabel!
    
    var count: Float = 0.0
    var caro: Int = 0
    var timer: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        label.backgroundColor = UIColor.gray
        timerlabel.backgroundColor = UIColor.gray
        sakelabel.backgroundColor = UIColor.gray
    }
    
    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        if number > 4 , number < 10{
            label.backgroundColor = UIColor.blue
        }else if number > 9{
            label.backgroundColor = UIColor.red
        }
    }
    
    @IBAction func mainasu(){
        number = number - 1
        label.text = String(number)
    }
    
    @IBAction func start(){
        
        if !timer.isValid{
            
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.up), userInfo: nil, repeats: true)
            
        }
    }

    @IBAction func stop(){
        if timer.isValid{
            timer.invalidate()
        }
    }
    
    @objc func up(){
        count = count + 0.01
        timerlabel.text = String(format: "%.2f", count)
    }
    
    @IBAction func beer(){
        caro = caro + 175
        sakelabel.text = String(caro)+"カロリー"
    }
    
    @IBAction func beermainasu(){
        caro = caro - 175
        sakelabel.text = String(caro)+"カロリー"
    }

}

