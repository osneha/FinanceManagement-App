//
//  PastViewController.swift
//  FinanceManagement-App
//
//  Created by student on 12/5/21.
//

import UIKit

class PastViewController: UIViewController {

    @IBOutlet weak var RentView: UITextField!
    @IBOutlet weak var BillsView: UITextField!
    @IBOutlet weak var SubView: UITextField!
    @IBOutlet weak var GroceriesView: UITextField!
    @IBOutlet weak var SavingsView: UITextField!
    @IBOutlet weak var AddView: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        var y = PrevBudgets.shared.Rent
        RentView.text = "\(y)"
        y = PrevBudgets.shared.Bills
        BillsView.text = "\(y)"
        y = PrevBudgets.shared.Sub
        SubView.text = "\(y)"
        y = PrevBudgets.shared.Groceries
        GroceriesView.text = "\(y)"
        y = PrevBudgets.shared.Savings
        SavingsView.text = "\(y)"
        y = PrevBudgets.shared.Additional
        AddView.text = "\(y)"

        // Do any additional setup after loading the view.
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
