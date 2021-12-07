//
//  PastViewController.swift
//  FinanceManagement-App
//
//  Created by student on 12/5/21.
//

import UIKit
import Charts

class PastViewController: UIViewController, ChartViewDelegate {

    @IBOutlet weak var RentView: UITextField!
    @IBOutlet weak var BillsView: UITextField!
    @IBOutlet weak var SubView: UITextField!
    @IBOutlet weak var GroceriesView: UITextField!
    @IBOutlet weak var SavingsView: UITextField!
    @IBOutlet weak var AddView: UITextField!

    var pieChart = PieChartView()
        @IBOutlet weak var graphView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        var y = PrevBudgets.shared.Rent
        RentView.text = "\(y)"
        // if you want to test the pie chart generation uncomment default values for y
        //y = 25
        y = PrevBudgets.shared.Bills
        BillsView.text = "\(y)"
        //y = 25
        y = PrevBudgets.shared.Sub
        //y = 25
        SubView.text = "\(y)"
        y = PrevBudgets.shared.Groceries
        //y = 25
        GroceriesView.text = "\(y)"
        y = PrevBudgets.shared.Savings
        //y = 25
        SavingsView.text = "\(y)"
        y = PrevBudgets.shared.Additional
        //y = 25
        AddView.text = "\(y)"

        pieChart.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pieChart.frame = CGRect(x: 0, y: 0,
                    width: self.view.frame.size.width,
                    height: self.view.frame.size.width)
        pieChart.center = graphView.center
        
        view.addSubview(pieChart)
        
        
        var entries = [ChartDataEntry]()
        var y = PrevBudgets.shared.Rent
        entries.append(ChartDataEntry(x: Double(y), y: Double(y)))
        y = PrevBudgets.shared.Bills
        entries.append(ChartDataEntry(x: Double(y), y: Double(y)))
        y = PrevBudgets.shared.Sub
            entries.append(ChartDataEntry(x: Double(y), y: Double(y)))
        y = PrevBudgets.shared.Groceries
            entries.append(ChartDataEntry(x: Double(y), y: Double(y)))
        y = PrevBudgets.shared.Savings
            entries.append(ChartDataEntry(x: Double(y), y: Double(y)))
        y = PrevBudgets.shared.Additional
            entries.append(ChartDataEntry(x: Double(y), y: Double(y)))

        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.colorful()
        let data = PieChartData(dataSet: set)
        pieChart.data = data
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
