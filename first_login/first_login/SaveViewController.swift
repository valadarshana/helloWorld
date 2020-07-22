//
//  SaveViewController.swift
//  first_login
//
//  Created by user on 18/07/20.
//  Copyright © 2020 Nextpage. All rights reserved.
//

import UIKit

class SaveViewController: UIViewController {

    @IBOutlet weak var img:UIImageView!
    @IBOutlet weak var txtSongName:UITextField!
    @IBOutlet weak var txtAlbum:UITextField!
    @IBOutlet weak var txtDesc:UITextView!
    @IBOutlet weak var switchDarkThem:UISwitch!
    @IBOutlet weak var lblDarkThem:UILabel!
    @IBOutlet weak var btnSave:UIButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtDesc.layer.borderWidth=1
        txtDesc.layer.borderColor=UIColor.lightGray.cgColor
        txtDesc.layer.cornerRadius=8
        btnSave.layer.cornerRadius=8
        switchDarkThem.isOn=false
        img.layer.cornerRadius=8
        
    }
    
    
    
    @IBAction func saveClick(_ sender:UIButton){
        let  showDataObj = storyboard?.instantiateViewController(withIdentifier: "MapVc") as! MapVc
                       //showDataObj.sNmae = txtSongName.text
                       //showDataObj.aName = txtAlbum.text
                       //showDataObj.desc = txtDesc.text
                   
        navigationController?.pushViewController(showDataObj, animated: true)
    }

    @IBAction func switchChange(_ sender: UISwitch) {
        if switchDarkThem.isOn
        {
            view.backgroundColor=UIColor(named: "dark")
            lblDarkThem.text="Light mode"
            lblDarkThem.textColor=UIColor.white
        }else{
           
            view.backgroundColor=UIColor.white
            lblDarkThem.text="Dark mode"
            lblDarkThem.textColor=UIColor(named: "dark")
        }
        
    }
}
