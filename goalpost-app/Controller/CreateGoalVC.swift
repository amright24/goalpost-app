//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Austin Rightnowar on 3/22/19.
//  Copyright © 2019 Austin Rightnowar. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    // O U T L E T S
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: RoundedButton!
    @IBOutlet weak var longTermBtn: RoundedButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet var createGoalView: UIView!
    
    var goalType: GoalType = .shortTerm
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    func setUpView() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(CreateGoalVC.handleTap))
        view.addGestureRecognizer(tap)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.setDeselectedColor()
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentDetail(finishGoalVC)
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
