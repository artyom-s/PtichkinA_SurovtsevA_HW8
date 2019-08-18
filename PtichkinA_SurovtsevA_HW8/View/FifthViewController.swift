//
//  FifthViewController.swift
//  PtichkinA_SurovtsevA_HW8
//
//  Created by Артем on 16/08/2019.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var result: UILabel!
    @IBOutlet var randomizeButton: UIButton!
    @IBOutlet var subview: UIView!
    
    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    
    @IBAction func generateRandomNumber() {
        var minNumber = Int(minValueTF.text ?? "0") ?? 0
        var maxNumber = Int(maxValueTF.text ?? "0") ?? 0
        
        if minNumber > maxNumber { swap(&minNumber, &maxNumber) }
        let randomNumber = Int.random(in: minNumber...maxNumber)
        
        result.text = "\(randomNumber)"
    }
}
