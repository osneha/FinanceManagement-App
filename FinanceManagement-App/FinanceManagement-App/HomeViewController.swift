//
//  HomeViewController.swift
//  FinanceManagement-App
//
//  Created by student on 12/5/21.
//

import UIKit
//Class Called Budgets, stores information of various budgets hence the name
class Budgets{
    //Instance of Budgets Named Shared, this is currently a singleton class, this may change
    static let shared = Budgets()
    //Variables for each instance
    var Rent :Int = 0;
    var Bills :Int = 0;
    var Sub :Int = 0;
    var Groceries :Int = 0;
    var Savings :Int = 0;
    var Additional :Int = 0;
    
    
    
    
    //Guide for pulling from Budgets to Text
    /*
//Class.Instance.Variable, this lets you edit the var if needed
    Budgets.shared.Rent = 1
//Optionally store budgets in a variable. Here x = 1 b/c see line above
    var x = Budgets.shared.Rent
//Make sure to use "\()" in quotes to interpret the variable as a String
    RentTextField.text = "\(x)"
 */
    
}
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
