//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Austin Rightnowar on 3/22/19.
//  Copyright © 2019 Austin Rightnowar. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {

    // OUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("button was pressed")
    }
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func number
}
