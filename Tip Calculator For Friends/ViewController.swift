//
//  ViewController.swift
//  Tip Calculator For Friends
//
//  Created by Admin on 11.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var numberOfFriendsTextField: UITextField!
    @IBOutlet weak var tipPrecentTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var totalAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func clickToCalculateButton(_ sender: Any) {
        
        view.endEditing(true)
        
        calculatorLogic()
    }
    func calculatorLogic() {
        
        let total = Double(totalTextField.text!) ?? 0
        let numberOfFriends = Double(numberOfFriendsTextField.text!) ?? 0
        let tipPrecent = Double(tipPrecentTextField.text!) ?? 0
        
        if tipPrecent < 1 {
            
            let result = (total + tipPrecent) / numberOfFriends
            let totalResult = total + tipPrecent
            totalAnswerLabel.text = "Total is \(totalResult)"
            answerLabel.text = "Each friend has to pay \(result) GEL"
            
        } else {
            answerLabel.text = "Write in tip precent field like this.\nFor example: 0.1 = 10%"
        }
        
        
    }
    
}

