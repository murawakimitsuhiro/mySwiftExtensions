//
//  UIView+gradient.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/05/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func gradient(_ colorA: UIColor, _ colorB: UIColor, isSideways: Bool = false) {
        let topColor = UIColor(red:0.07, green:0.13, blue:0.26, alpha:1)
        let bottomColor = UIColor(red:0.54, green:0.74, blue:0.74, alpha:1)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        gradientLayer.colors = gradientColors
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
