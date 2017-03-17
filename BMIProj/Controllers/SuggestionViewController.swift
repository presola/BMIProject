//
//  SuggestionViewController.swift
//  BMIProj
//
//  Created by Abisola Adeniran on 2017-03-17.
//  Copyright © 2017 Adeniran  Abisola. All rights reserved.
//

import UIKit

class SuggestionViewController: UIViewController {

    @IBOutlet weak var resultText: UILabel!
    
    let bmiDataSetUp = BMIDataSetup()
    var bmiDataSet: [BMIData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func setupView() {
        self.bmiDataSetUp.loadAllBMI()
        bmiDataSet = self.bmiDataSetUp.bmiDataSet
        if !bmiDataSet.isEmpty {
            let bmiData: BMIData = bmiDataSet[0]
            let bmi = Double(bmiData.bmi)
            if(bmi! > 18.5 && bmi! < 24.9)
            {
                self.resultText.text = "It is in the normal range"
            }
            else if(bmi! > 25.0 && bmi! < 30)
            {
                self.resultText.text = "It is in the Over-weight range"
            }
            else if(bmi! > 30.0 && bmi! < 40)
            {
                self.resultText.text = "It is in the Obese range"
            }
            else if(bmi! > 40.0)
            {
                self.resultText.text = "Your BMI is in the Morbidly Obese range"
            }
            else
            {
                self.resultText.text = "It is in the Under-weight range"
            }
        }
        else{
            self.resultText.text = "You currently have no BMI Data"
            
        }
        
        
    }


}