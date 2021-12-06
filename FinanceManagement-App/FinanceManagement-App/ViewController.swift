//
//  ViewController.swift
//  FinanceManagement-App
//
//  Created by Sneha Ojha on 11/11/21.
//

import UIKit

class ViewController: UIViewController {
//Log In View Controller Elements
    
    @IBOutlet weak var UsernameTextField: UITextField!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var logInBTN: UIButton!
    
    @IBOutlet weak var TextLabel: UILabel!
    //Log In View Controller Variables
   var username = ""
   var password = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        //View Setup
        logInBTN.backgroundColor = UIColor.black
        logInBTN.isEnabled = false
    }
    
    
    @IBAction func onUsernameEdit(_ sender: Any) {
        if (UsernameTextField.text == "")||(PasswordTextField.text == ""){
            
            logInBTN.backgroundColor = UIColor.black
            logInBTN.isEnabled = false
        }
        else{
            logInBTN.backgroundColor = UIColor.orange
            logInBTN.isEnabled = true
        }
        
    }
    
    
    @IBAction func onPasswordEdit(_ sender: Any) {
        if (UsernameTextField.text == "")||(PasswordTextField.text == ""){
            
            logInBTN.backgroundColor = UIColor.black
            logInBTN.isEnabled = false
        }
        else{
            logInBTN.backgroundColor = UIColor.orange
            logInBTN.isEnabled = true
        }
    }
    
    
    
    
    
    
    @IBAction func loginBtnAction(_ sender: Any) {
    }
    
    @IBAction func ResetCredentialsBtnAction(_ sender: Any) {
        
    }
    

}

