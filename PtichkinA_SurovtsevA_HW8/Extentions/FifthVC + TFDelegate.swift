//
//  FifthVC + TFDelegate.swift
//  PtichkinA_SurovtsevA_HW8
//
//  Created by Artur Sokolov on 19/08/2019.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

extension FifthViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func addDoneButton() {
        let toolbar = UIToolbar()
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: .done,
                                         target: self,
                                         action: #selector(dismissKeyboard))
        let flexsibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                             target: nil,
                                             action: nil)
        toolbar.items = [flexsibleSpace, doneButton]
        toolbar.sizeToFit()
        
        minValueTF.inputAccessoryView = toolbar
        maxValueTF.inputAccessoryView = toolbar
        
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
    
}
