//
//  ViewController.swift
//  KeychainDemo
//
//  Created by Indra Kurniawan on 11/06/20.
//  Copyright © 2020 Indra Kurniawan. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let keychainData = KeychainWrapper.standard.string(forKey: "samplekey_inputfield")
        
        if keychainData != nil {
            textLabel.text = keychainData
        }
        else {
            textLabel.text = "Input tet here..."
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        textLabel.text = inputField.text
        KeychainWrapper.standard.set(inputField.text ?? "", forKey: "samplekey_inputfield")
    }
    
}

