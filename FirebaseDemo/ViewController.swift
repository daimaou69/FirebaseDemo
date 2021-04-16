//
//  ViewController.swift
//  FirebaseDemo
//
//  Created by CNTT on 4/16/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtMSSV: UITextField!
    
    @IBOutlet weak var txtHoTen: UITextField!
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func btnRegister(_ sender: UIButton) {
        ref = Database.database().reference()
        
        if let mssv = txtMSSV.text, let hoten = txtHoTen.text {
            self.ref.child("test").child(mssv).setValue(["id":mssv, "username": hoten])
        }
    
    }
    
}

