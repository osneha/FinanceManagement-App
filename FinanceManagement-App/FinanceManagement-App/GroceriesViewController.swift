//
//  GroceriesViewController.swift
//  FinanceManagement-App
//
//  Created by student on 12/5/21.
//

import UIKit

class GroceriesViewController: UIViewController {

    @IBOutlet weak var TotalAmt: UITextField!
    
    @IBOutlet weak var RemainingAmt: UITextField!
    
    @IBOutlet weak var ItemName: UITextField!
    
    @IBOutlet weak var ItemCost: UITextField!
    
    @IBOutlet weak var ItemNumber: UITextField!
    
    @IBOutlet weak var ItemTotal: UITextField!
    
    
    
    let tot = Budgets.shared.Groceries
    var totSpent = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TotalAmt.text = "\(tot)"
    }
    
    @IBAction func OnClick(_ sender: Any) {
        let x = Int(ItemCost.text!)
        let y = Int(ItemNumber.text!)
        let z = x! * y!
        ItemTotal.text! = "\(z)"
        totSpent += z
        let rem = tot - totSpent
        RemainingAmt.text! = "\(rem)"
        
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
