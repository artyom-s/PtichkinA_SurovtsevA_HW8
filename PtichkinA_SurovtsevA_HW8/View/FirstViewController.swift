//
//  FirstViewController.swift
//  PtichkinA_SurovtsevA_HW8
//
//  Created by Артем on 16/08/2019.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var result: UILabel!
    @IBOutlet var randomizeButton: UIButton!
    @IBOutlet var subview: UIView!

    @IBAction func generateRandomNumber() {
        let element = ModelElements.shared.headsOrTails.randomElement()
        result.text = element
    }

}
