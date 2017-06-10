//
//  CGContext+conectPoint.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGContext {
    
    ///二点間をつなぐContextを生成
    public func conectPoint(_ a:CGPoint, _ b:CGPoint, color: UIColor, lineWidth:CGFloat = 2.0) -> CGContext {
        var beginP = a
        var endP = b
        
        if a.x < b.x {
            beginP = b
            endP = a
        }
        
        var contextSize = CGSize.zero
        var moveP = CGPoint.zero
        var addLineP = CGPoint.zero
        
        if beginP.y <= endP.y {
            contextSize.width = endP.x - beginP.x
            contextSize.height = endP.y - beginP.y
            
            addLineP.x = endP.x - beginP.x
            addLineP.y = endP.y - beginP.y
        } else if beginP.y > endP.y {
            contextSize.width = endP.x - beginP.x
            contextSize.height = beginP.y - endP.y
            
            moveP.y = beginP.y - endP.y
            addLineP.x = endP.x - beginP.x
        }
        
        UIGraphicsBeginImageContext(contextSize)
        
        let context = UIGraphicsGetCurrentContext()
        
        context?.move(to: moveP)
        context?.addLine(to: addLineP)
        
        context?.setLineWidth(lineWidth)
        context?.setStrokeColor(color.cgColor)
        
        context?.closePath()
        context?.strokePath()
        
        return context!
    }
}
