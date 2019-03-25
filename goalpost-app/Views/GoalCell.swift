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
    @IBOutlet weak var completionView: UIView!
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgress.text = String(describing: goal.goalProgress)
        if goal.goalProgress == goal.goalCompletionValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
        
    }
    
}
