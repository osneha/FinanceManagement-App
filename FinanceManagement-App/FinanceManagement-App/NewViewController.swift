//
//  NewViewController.swift
//  FinanceManagement-App
//
//  Created by student on 12/5/21.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var totalView: UITextField!
    
    @IBOutlet weak var RentAdd: UITextField!
    
    @IBOutlet weak var BillsAdd: UITextField!
    
    @IBOutlet weak var SubAdd: UITextField!
    
    @IBOutlet weak var GroceriesAdd: UITextField!
    
    @IBOutlet weak var SavingsAdd: UITextField!
    
    @IBOutlet weak var AddAdd: UITextField!
    
    var total = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    @IBAction func RentAdd(_ sender: Any) {
        let x = Int(RentAdd.text!)
        total += x!
        totalView.text = "\(total)"
        Budgets.shared.Rent = x!
    }

    @IBAction func BillsAdd(_ sender: Any) {
        let x = Int(BillsAdd.text!)
        total += x!
        totalView.text = "\(total)"
        Budgets.shared.Bills = x!
    }
    
    @IBAction func SubAdd(_ sender: Any) {
        let x = Int(SubAdd.text!)
        total += x!
        totalView.text = "\(total)"
        Budgets.shared.Sub = x!
    }
    
    @IBAction func GroceriesAdd(_ sender: Any) {
        let x = Int(GroceriesAdd.text!)
        total += x!
        totalView.text = "\(total)"
        Budgets.shared.Groceries = x!
    }
    
    @IBAction func SavingsAdd(_ sender: Any) {
        let x = Int(SavingsAdd.text!)
        total += x!
        totalView.text = "\(total)"
        Budgets.shared.Savings = x!
    }
    
    @IBAction func AddAdd(_ sender: Any) {
        let x = Int(AddAdd.text!)
        total += x!
        totalView.text = "\(total)"
        Budgets.shared.Additional = x!
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
