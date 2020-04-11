//
//  ViewController.swift
//  LoginPage
//
//  Created by poti on 2020/04/11.
//  Copyright © 2020 kaoru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //IB ＝ interface Builder
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self

    }
    
    @IBAction func Login(_ sender: Any) {
    
        logoImageView.image = UIImage(named: "loginOK")
        userNameLabel.text = "ユーザ名：" + userNameTextField.text!
        
        passwordLabel.text = "パスワード：" + passwordTextField.text!
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //if press return key. close keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //close keyboard
        textField.resignFirstResponder()
        
        return true
    }
    
}

