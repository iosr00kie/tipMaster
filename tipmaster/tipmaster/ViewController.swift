//
//  ViewController.swift
//  tipmaster
//
//  Created by Deepak Deshpande on 10/1/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipPercentSegment: UISegmentedControl!
    
    @IBOutlet weak var separatorView: UIView!
    
    @IBOutlet var bgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        
        var billAmount = NSString(string: billField.text!).doubleValue
        
        print("Bill Amount", billAmount)
        var tipPercent = 0.0
        if(tipPercentSegment.selectedSegmentIndex == 0)
        {
            tipPercent = 0.15
        }
        else if (tipPercentSegment.selectedSegmentIndex == 1)
        {
            tipPercent = 0.2
        }
        else if(tipPercentSegment.selectedSegmentIndex == 2)
        {
            tipPercent = 0.25
        }
        
        tipLabel.text = String(format: "$%.2f", billAmount * tipPercent)
        totalLabel.text = String(format: "$%.2f", billAmount + billAmount * tipPercent)
    }
    
    
    
    @IBAction func onValueChanged(sender: AnyObject) {
        var billAmount = NSString(string: billField.text!).doubleValue
        
        var tipPercent = 0.0
        
        if(tipPercentSegment.selectedSegmentIndex == 0)
        {
            tipPercent = 0.15
            separatorView.backgroundColor = UIColor.redColor()
        }
        else if (tipPercentSegment.selectedSegmentIndex == 1)
        {
            tipPercent = 0.2
            separatorView.backgroundColor = UIColor.yellowColor()
        }
        else if(tipPercentSegment.selectedSegmentIndex == 2)
        {
            tipPercent = 0.25
            separatorView.backgroundColor = UIColor.greenColor()
        }
        
        tipLabel.text = String(format: "$%.2f", billAmount * tipPercent)
        totalLabel.text = String(format: "$%.2f", billAmount + billAmount * tipPercent)
        
        
    }
    
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    

}

