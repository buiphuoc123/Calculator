//
//  ViewController.swift
//  CALCULATOR
//
//  Created by Cntt05 on 4/15/17.
//  Copyright © 2017 Cntt05. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var numberEnd:Double=0
    var firstnumber:Double = 0
    var  flag = false
    var pheptinh = 0
    var k = 0

    
    @IBAction func number(_ sender: UIButton) {
        
        if flag == true
        {
            label.text = String(sender.tag - 1)
            numberEnd = Double(label.text!)!
            flag = false
        }
        else
        {
            label.text = label.text! + String(sender.tag - 1)
            numberEnd = Double(label.text!)!
            
        }

        
    }
    
    @IBAction func congtru(_ sender: Any) {
        label.text = String (Double(label.text!)! * (-1))

        
    }
    @IBAction func percent(_ sender: Any) {
        
        label.text = String (Double(label.text!)! / 100)

    }
    
    @IBAction func button(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            firstnumber = Double(label.text!)!
            if sender.tag == 12    //Chia
            {
                label.text = "/"
            }
            else if sender.tag == 13 //Nhân
            {
                label.text = "x"
            }
            else if sender.tag == 14 //Trừ
            {
                label.text = "-"
            }
            else if sender.tag == 15 //Cộng
            {
                label.text = "+"
            }
            
            pheptinh = sender.tag
            flag = true
        }
        else if sender.tag == 16
        {
            if pheptinh == 12
            {
                if numberEnd == 0
                {
                    label.text = "loi"
                    firstnumber = 0
                    numberEnd = 0
                    pheptinh = 0
                }
                else{
                    label.text = String(firstnumber / numberEnd)
                }
            }
            else if pheptinh == 13
            {
                label.text = String(firstnumber * numberEnd)
            }
            else if pheptinh == 14
            {
                label.text = String(firstnumber - numberEnd)
            }
            else if pheptinh == 15
            {
                label.text = String(firstnumber + numberEnd)
            }
            
            
        }
        else if sender.tag == 11
        {
            label.text = ""
            firstnumber = 0
            numberEnd = 0
            pheptinh = 0
        }

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

