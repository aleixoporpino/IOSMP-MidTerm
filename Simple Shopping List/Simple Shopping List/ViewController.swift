//
//  ViewController.swift
//  Simple Shopping List
//
//  Created by Aleixo Porpino Filho on 2018-10-18.
//  Copyright © 2018 Porpapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var fav1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onChangeStepper() {
        lbl1.text = "Qty: \(Int(stepper1.value))"
    }
    
    
    
}

