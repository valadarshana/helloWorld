//
//  ShowData.swift
//  first_login
//
//  Created by user on 18/07/20.
//  Copyright © 2020 Nextpage. All rights reserved.
//

import UIKit

class ShowData: UIViewController {

    @IBOutlet weak var lblSongName:UILabel!
    @IBOutlet weak var lblAlbum:UILabel!
    @IBOutlet weak var lblDesc:UILabel!
    @IBOutlet weak var lblCount:UILabel!
    @IBOutlet weak var stp:UIStepper!
    
   var sNmae :String?
   var aName:String?
    var count=0
   var desc:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblSongName.text=sNmae
        lblAlbum.text=aName
        lblDesc.text=desc
        lblCount.text="0"
        
    }
    
    @IBAction func steperValueChange(_ sender: UIStepper) {
        //if stp.value==1.0{
        lblCount.text=String(stp.value)
        lblCount.font = UIFont(name: "Arial", size: CGFloat(stp.value))
      
    }
    
    
}
