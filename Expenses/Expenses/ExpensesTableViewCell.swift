//
//  ExpensesTableViewCell.swift
//  Expenses
//
//  Created by Deng tianyuan on 1/25/19.
//  Copyright © 2019 Deng tianyuan. All rights reserved.
//

import UIKit

class ExpensesTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
