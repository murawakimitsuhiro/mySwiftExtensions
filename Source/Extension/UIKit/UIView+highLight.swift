//
//  UIView+highLight.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/26.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    func showHighLight() {
        let highLightLayer = HighLightLayer()
        highLightLayer.frame.size = frame.size
        layer.addSublayer(highLightLayer)
    }
    
    func dismissHighLight() {
        layer.sublayers?.forEach({ subLayer in
            if subLayer is HighLightLayer {
                subLayer.removeFromSuperlayer()
            }
        })
    }
}

class HighLightLayer: CALayer {
    override init() {
        super.init()
        backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
 
