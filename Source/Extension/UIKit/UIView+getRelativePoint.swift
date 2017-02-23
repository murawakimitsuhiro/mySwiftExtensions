//
//  UIView+getRelativePoint.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    /**
     自身(view)の origin が比較対象のビュー(自身の親ビューである必要がある)の origin に対してどこにあるかを返す
    */
    public static func getRelativePoint(parentView: UIView, subView: UIView) -> CGPoint {
        var diffPoint = subView.frame.origin
        var lastSuperView = subView
        
        while let superView = lastSuperView.superview {
            
            if superView == parentView {
                return diffPoint
            }
            
            lastSuperView = superView
            diffPoint += lastSuperView.frame.origin
        }
        
        return CGPoint.zero
    }
    
    /**
     自身(view)の origin が比較対象のビュー(自身の親ビューである必要がある)の origin に対してどこにあるかを返す
    */
    public func getRelativePoint(to targetView: UIView) -> CGPoint {
        return UIView.getRelativePoint(parentView: targetView, subView: self)
    }
}
