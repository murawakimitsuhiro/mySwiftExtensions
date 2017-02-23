//
//  CGPoint+angle.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGPoint {
    
    public func getAngle(a:CGPoint, b:CGPoint) -> Double {
        var radian = Double(atan2(b.y - a.y, b.x - a.x))
        if radian < 0 {
            radian += 2 * M_PI
        }
        return floor(radian * 360 / (2 * M_PI))
    }
    
    public func getAngle(targetPoint: CGPoint) -> Double {
        return getAngle(a: targetPoint, b: self)
    }
}
