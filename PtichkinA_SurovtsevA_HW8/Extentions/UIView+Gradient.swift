//
//  UIView+Gradient.swift
//  PtichkinA_SurovtsevA_HW8
//
//  Created by Artur Sokolov on 18/08/2019.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

extension UIView {
    func makeGradient() {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [#colorLiteral(red: 0.1793281734, green: 0.5451820493, blue: 0.9018250704, alpha: 1).cgColor, #colorLiteral(red: 0.01994736391, green: 0.2413116307, blue: 0.6476591496, alpha: 1).cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        gradient.cornerRadius = gradient.frame.width * 0.1
        self.layer.insertSublayer(gradient, at: 0)
    }
}
