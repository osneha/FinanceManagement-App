//
//  CurrentViewController.swift
//  FinanceManagement-App
//
//  Created by student on 12/5/21.
//

import UIKit

class CurrentViewController: UIViewController {

    @IBOutlet weak var RentTextField: UITextField!
    
    @IBOutlet weak var BillsTextField: UITextField!
    
    @IBOutlet weak var SubTextField: UITextField!
    
    @IBOutlet weak var GroceriesTextField: UITextField!
    
    @IBOutlet weak var SavingsTextField: UITextField!
    
    @IBOutlet weak var AddTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //Rent
        var x = Budgets.shared.Rent
        RentTextField.text = "\(x)"
        //Bills
        x = Budgets.shared.Bills
        BillsTextField.text = "\(x)"
        //Subscritions
        x = Budgets.shared.Sub
        SubTextField.text = "\(x)"
        //Groceries
        x = Budgets.shared.Groceries
        GroceriesTextField.text = "\(x)"
        //Savings
        x = Budgets.shared.Savings
        SavingsTextField.text = "\(x)"
        //Additional
        x = Budgets.shared.Additional
        AddTextField.text = "\(x)"
        
    }
    
    /*
leaving this here for reference currently
    Budgets.shared.Rent = 1
    var x = Budgets.shared.Rent
    RentTextField.text = "\(x)"
    */
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
