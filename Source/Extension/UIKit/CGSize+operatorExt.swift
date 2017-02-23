//
//  CGRect+Calc.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGSize {
    
    public static func + (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width + right.width, height: left.height + right.height)
    }
    
    public static func - (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width - right.width, height: left.height - right.height)
    }
    
    public static func + (left :CGSize, right: CGPoint) -> CGSize {
        return CGSize(width: left.width + right.x, height: left.height + right.y)
    }
    
    public static func - (left :CGSize, right: CGPoint) -> CGSize {
        return CGSize(width: left.width - right.x, height: left.height - right.y)
    }
    
    public static func / (left: CGSize, right: CGFloat) -> CGSize {
        return CGSize(width: left.width/right, height: left.height/right)
    }
    
    
    public static func += ( left: inout CGSize, right: CGSize) {
        left.width += right.width
        left.height += right.width
    }
    
    public static func -= ( left: inout CGSize, right: CGSize) {
        left.width -= right.width
        left.height -= right.width
    }
    
    public static func /= ( left: inout CGSize, right: CGSize) {
        left.width /= right.width
        left.height /= right.width
    }
    
    public static func *= ( left: inout CGSize, right: CGSize) {
        left.width *= right.width
        left.height *= right.width
    }
}
