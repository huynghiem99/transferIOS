//
//  UIView_Extension.swift
//  transfer
//
//  Created by macOS on 8/22/20.
//  Copyright © 2020 huy. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func cornerRadius(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    func circleCorner() {
        self.cornerRadius(radius: self.frame.height / 2)
    }
    
    func circleCorner(thickness: CGFloat, color: UIColor) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = thickness
        self.cornerRadius(radius: self.frame.height / 2)
    }
    
    func circleCorner(radius: CGFloat, thickness: CGFloat, color: UIColor) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = thickness
        self.cornerRadius(radius: radius)
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
