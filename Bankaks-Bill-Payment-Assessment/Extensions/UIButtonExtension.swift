//
//  UIButtonExtension.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 2/12/2020.
//

import UIKit

extension UIButton {
    var isValid: Bool {
        get {
            return isEnabled && backgroundColor == UIColor(red: 10, green: 188, blue: 20, alpha: 0.85)
        }
        set {
            backgroundColor = newValue ? UIColor(red: 10, green: 188, blue: 20, alpha: 0.85) : .lightGray
            isEnabled = newValue
        }
    }
    
    func roundEdges(){
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
    }
    
}
