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
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func btnRegister(_ sender: UIButton) {
        ref = Database.database().reference()
    self.ref.child("users").child("18211TT3972").setValue(["username": "Tran Thanh Tung"])
    }
    
}

