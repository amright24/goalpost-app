//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Austin Rightnowar on 3/22/19.
//  Copyright © 2019 Austin Rightnowar. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    // O U T L E T S
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgress: UILabel!
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgress.text = String(describing: goalProgressAmount)
    }
    
}
