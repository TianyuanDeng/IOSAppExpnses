//
//  ExpensesEventViewController.swift
//  Expenses
//
//  Created by Deng tianyuan on 1/25/19.
//  Copyright © 2019 Deng tianyuan. All rights reserved.
//

import UIKit

class ExpensesEventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var expenses = [Expenses]()
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "MMMM d, yyyy HH:mm"
        
        if let date = dateFormatter.date(from: "June 1, 2018 18:30") {
            expenses.append(Expenses(title: "Dinner", amount: 32.50, date: date))
        }
        if let date = dateFormatter.date(from: "May 30, 2018 12:17") {
            expenses.append(Expenses(title: "Office Supplies", amount: 59.34, date: date))
        }
        if let date = dateFormatter.date(from: "May 30, 2018 11:43") {
            expenses.append(Expenses(title: "Uber", amount: 16.23, date: date))
        }
        if let date = dateFormatter.date(from: "May 29, 2018 8:45") {
            expenses.append(Expenses(title: "Coffee", amount: 3.95, date: date))
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expensesEvent", for: indexPath)
        
        if let cell = cell as? ExpensesTableViewCell {
            let expenses = self.expenses[indexPath.row]
            cell.title.text = expenses.title
            cell.amount.text = String(expenses.amount)
            cell.date.text = dateFormatter.string(from: expenses.date)
        }
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
