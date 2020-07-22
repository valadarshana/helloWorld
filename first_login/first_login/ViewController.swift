//
//  ViewController.swift
//  first_login
//
//  Created by Vijay Parmar on 05/07/20.
//  Copyright © 2020 Nextpage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view_color: UIView!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var slideBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func slide_red(_ sender: Any) {
        setColor()
    }
    
    @IBAction func slide_blue(_ sender: UISlider) {
        setColor()
    }
    @IBAction func slide_green(_ sender: UISlider) {
        setColor()
    }
    
    func setColor(){
        let red=sliderRed.value
        let green=sliderGreen.value
        let blue=slideBlue.value
        view_color.backgroundColor=UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1.0)
    }
    
}


