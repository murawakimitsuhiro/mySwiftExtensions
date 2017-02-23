//
//  CGPoint+Distance.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGPoint {
    public static func distancePointsBetween(firstP a:CGPoint, secondP b:CGPoint) -> CGFloat {
        let dx = Double(a.x - b.x)
        let dy = Double(a.y - b.y)
        return CGFloat(sqrt(dx*dx + dy*dy))
    }
    
    public func distancePoint(to point: CGPoint) -> CGFloat {
        return CGPoint.distancePointsBetween(firstP: self, secondP: point)
    }
}
