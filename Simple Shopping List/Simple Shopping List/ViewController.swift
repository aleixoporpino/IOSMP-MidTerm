//
//  ViewController.swift
//  Simple Shopping List
//  App description: A simple shopping list to remind you what you want to buy
//
//  Created by Jose Aleixo Araujo Porpino Filho on 2018-10-18.
//  Student ID: 301005491
//  Copyright © 2018 Porpapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtList: UITextField!
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var fav1: UIButton!
    
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var fav2: UIButton!
    
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var fav3: UIButton!
    
    @IBOutlet weak var txt4: UITextField!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var stepper4: UIStepper!
    @IBOutlet weak var fav4: UIButton!
    
    @IBOutlet weak var txt5: UITextField!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var stepper5: UIStepper!
    @IBOutlet weak var fav5: UIButton!
    
    @IBOutlet var steppers: [UIStepper]!
    @IBOutlet var quantities: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Set the text of the labels quantities
    @IBAction func onChangeStepper() {
        lbl1.text = "Qty: \(Int(stepper1.value))"
        lbl2.text = "Qty: \(Int(stepper2.value))"
        lbl3.text = "Qty: \(Int(stepper3.value))"
        lbl4.text = "Qty: \(Int(stepper4.value))"
        lbl5.text = "Qty: \(Int(stepper5.value))"
    }
    
    // Change the text and text color of the favorite button
    @IBAction func onClickFav(_ sender: UIButton) {
        if sender.currentTitle! ==  "★" {
            sender.setTitle("☆", for: .normal)
            sender.setTitleColor(UIColorFromRGB(0x1E6FAF), for: .normal)
        } else {
            sender.setTitle("★", for: .normal)
            sender.setTitleColor(UIColorFromRGB(0xFFD300), for: .normal)
        }
    }
    
    // Convert rgb color to UIColor
    func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    @IBAction func onClickSave() {
        
    }
    
    // Clear all the values of the view
    @IBAction func onClickCancel() {
        txtList.text = ""
        stepper1.value = 0.0
        stepper2.value = 0.0
        stepper3.value = 0.0
        stepper4.value = 0.0
        stepper5.value = 0.0
        fav1.setTitle("☆", for: .normal)
        fav1.setTitleColor(UIColorFromRGB(0x1E6FAF), for: .normal)
        fav2.setTitle("☆", for: .normal)
        fav2.setTitleColor(UIColorFromRGB(0x1E6FAF), for: .normal)
        fav3.setTitle("☆", for: .normal)
        fav3.setTitleColor(UIColorFromRGB(0x1E6FAF), for: .normal)
        fav4.setTitle("☆", for: .normal)
        fav4.setTitleColor(UIColorFromRGB(0x1E6FAF), for: .normal)
        fav5.setTitle("☆", for: .normal)
        fav5.setTitleColor(UIColorFromRGB(0x1E6FAF), for: .normal)
        txt1.text = ""
        txt2.text = ""
        txt3.text = ""
        txt4.text = ""
        txt5.text = ""
        onChangeStepper()
    }
    
    
}

