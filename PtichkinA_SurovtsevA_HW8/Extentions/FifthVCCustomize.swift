//
//  FifthVCCustomize.swift
//  PtichkinA_SurovtsevA_HW8
//
//  Created by Artur Sokolov on 19/08/2019.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

extension FifthViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeMainLabel()
        customizeResult()
        customizeButton()
        customizeSubview()
        
        addDoneButton()
    }
    
    func customizeSubview() {
        subview.makeGradient()
        subview.layer.cornerRadius = subview.frame.width * 0.1
    }
    
    func customizeMainLabel() {
        mainLabel.text = "Случайное число"
        mainLabel.font = UIFont(name: "Noteworthy-Bold",
                                size: 28)
        mainLabel.textColor = .white
        
    }
    
    func customizeResult() {
        result.text = nil
        result.font = UIFont(name: "Noteworthy-Bold",
                             size: 100)
        result.textColor = .white
        result.shadowColor = .black
        result.shadowOffset.width = 2
        result.shadowOffset.height = 2
    }
    
    func customizeButton() {
        randomizeButton.layer.cornerRadius = randomizeButton.frame.width * 0.1
        randomizeButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        randomizeButton.setTitle("Сгенерировать", for: .normal)
        randomizeButton.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 28)
        randomizeButton.setTitleColor(.white, for: .normal)
    }
}
