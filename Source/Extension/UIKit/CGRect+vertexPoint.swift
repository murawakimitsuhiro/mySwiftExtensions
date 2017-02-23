//
//  UIView+rect.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGRect {
    /**
     右下（originの対頂点のため)
     */
    public var endPoint:CGPoint {
        set(value) {
            origin.x = value.x - size.width
            origin.y = value.y - size.height
        }
        
        get {
            return CGPoint(x: origin.x + width, y: origin.y + height)
        }
    }
    
    public var topRightPoint:CGPoint {
        set(value) {
            origin.x = value.x - size.width
            origin.y = value.y
        }
        
        get {
            return CGPoint(x: origin.x + width, y: origin.y)
        }
    }
    
    public var bottomLeftPoint:CGPoint {
        set(value) {
            origin.x = value.x
            origin.y = value.y - size.height
        }
        
        get {
            return CGPoint(x: origin.x, y: origin.y + size.height)
        }
    }
}
