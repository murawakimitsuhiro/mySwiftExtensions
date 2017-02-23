//
//  CGPoint+OperatorExt.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGPoint {
    public static func + (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x + right.x, y: left.y + right.y)
    }
    
    public static func - (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x - right.x, y: left.y - right.y)
    }
    
    public static func + (left :CGPoint, right: CGSize) -> CGPoint {
        return CGPoint(x: left.x + right.width, y: left.y + right.height)
    }
    
    public static func - (left :CGPoint, right: CGSize) -> CGPoint {
        return CGPoint(x: left.x - right.width, y: left.y - right.height)
    }
    
    public static func / (left :CGSize, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.width / right.x, y: left.height / right.y)
    }
    
    public static func / (left: CGPoint, right: CGSize) -> CGPoint {
        return CGPoint(x: left.x / right.width, y: left.y / right.height)
    }
    
    public static func += (left: inout CGPoint, right: CGPoint) {
        left.x += right.x
        left.y += right.x
    }
    
    public static func -= (left: inout CGPoint, right: CGPoint) {
        left.x -= right.x
        left.y -= right.x
    }
    
    public static func /= (left: inout CGPoint, right: CGPoint) {
        left.x /= right.x
        left.y /= right.x
    }
    
    public static func *= (left: inout CGPoint, right: CGPoint) {
        left.x *= right.x
        left.y *= right.x
    }
}
