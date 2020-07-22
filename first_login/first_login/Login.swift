//
//  Login.swift
//  first_login
//
//  Created by Vijay Parmar on 05/07/20.
//  Copyright © 2020 Nextpage. All rights reserved.
//

import UIKit

class Login: UIViewController {

    
    @IBOutlet weak var username_txt: UITextField!
    //var username=""
    //var pass=""
    
    @IBOutlet weak var pass_txt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    @IBAction func btn_click(_ sender: Any) {
    
      //  username=username_txt.text ?? ""
        //pass=pass_txt.text ?? ""
        
        if username_txt.text=="admin" && pass_txt.text=="admin"
        {
            print("wel come \(username_txt.text ?? "")")
            
        }
        else{
            print("sorry....")
        }
    }

    
}
