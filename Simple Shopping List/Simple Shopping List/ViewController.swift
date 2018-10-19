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
    
    @IBAction func onClickFav(_ sender: UIButton) {
        if sender.currentTitle! ==  "★" {
            sender.setTitle("☆", for: .normal)
            sender.setTitleColor(UIColorFromRGB(0x1E6FAF), for: .normal)
        } else {
            sender.setTitle("★", for: .normal)
            sender.setTitleColor(UIColorFromRGB(0xFFD300), for: .normal)
        }
    }
    
    func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
}

