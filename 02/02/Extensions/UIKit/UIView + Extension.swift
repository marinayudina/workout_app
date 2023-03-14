//
//  UIView + Extension.swift
//  02
//
//  Created by Марина on 24.02.2023.
//

import UIKit

extension UIView {
    
    func addShadowOnView() {
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        layer.shadowOpacity = 0.7 //прозрачность
        layer.shadowRadius = 1.0 //для скругления
    }
}
