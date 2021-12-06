//
//  ViewController.swift
//  FinanceManagement-App
//
//  Created by Sneha Ojha on 11/11/21.
//

import UIKit
class LogIn{
    static let Credentials = LogIn()
    var username :String = ""
    var password :String = ""
}
class ViewController: UIViewController {
//Log In View Controller Elements
    
    @IBOutlet weak var UsernameTextField: UITextField!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var logInBTN: UIButton!
    
    @IBOutlet weak var TextLabel: UILabel!
    //Log In View Controller Variables
    override func viewDidLoad() {
        super.viewDidLoad()
        //View Setup
        logInBTN.backgroundColor = UIColor.black
        logInBTN.isEnabled = false
    }
    
    //Login Button Requirements---------------------
    @IBAction func onUsernameEdit(_ sender: Any) {
        if(LogIn.Credentials.username == "" && LogIn.Credentials.password == ""){
            if (UsernameTextField.text == "")||(PasswordTextField.text == ""){
            
                logInBTN.backgroundColor = UIColor.black
                logInBTN.isEnabled = false
        }
            else{
                logInBTN.backgroundColor = UIColor.orange
                logInBTN.isEnabled = true
                }
    } //end of outer If
        else{
            if(UsernameTextField.text == LogIn.Credentials.username && PasswordTextField.text == LogIn.Credentials.password){
                logInBTN.backgroundColor = UIColor.orange
                logInBTN.isEnabled = true
            }
            else{
                logInBTN.backgroundColor = UIColor.black
                logInBTN.isEnabled = false
            }
        }
        
         /*
        if (UsernameTextField.text == "")||(PasswordTextField.text == ""){
            
            logInBTN.backgroundColor = UIColor.black
            logInBTN.isEnabled = false
        }
        else{
            logInBTN.backgroundColor = UIColor.orange
            logInBTN.isEnabled = true
        }
    */
        
    }
    @IBAction func onPasswordEdit(_ sender: Any) {
        if(LogIn.Credentials.username == "" && LogIn.Credentials.password == ""){
            if (UsernameTextField.text == "")||(PasswordTextField.text == ""){
            
                logInBTN.backgroundColor = UIColor.black
                logInBTN.isEnabled = false
        }
            else{
                logInBTN.backgroundColor = UIColor.orange
                logInBTN.isEnabled = true
                }
    } //end of outer If
        else{
            if(UsernameTextField.text == LogIn.Credentials.username && PasswordTextField.text == LogIn.Credentials.password){
                logInBTN.backgroundColor = UIColor.orange
                logInBTN.isEnabled = true
            }
            else{
                logInBTN.backgroundColor = UIColor.black
                logInBTN.isEnabled = false
            }
        }   //end of else
//---------------------------------------------------
    }//End of onPasswordEdit
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "HomeViewSegue"{
            let destination = segue.destination as! HomeViewController
            
           
            
            
        }
    }
    */
    @IBAction func loginBtnAction(_ sender: Any) {
        LogIn.Credentials.username = UsernameTextField.text!
        LogIn.Credentials.password = PasswordTextField.text!
    }
    
    @IBAction func ResetCredentialsBtnAction(_ sender: Any) {
        
    }
    

}

