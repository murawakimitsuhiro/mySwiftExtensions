//
//  UIScrollView+ContentOffsetCenter.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIScrollView {
    public var contentOffsetCenter: CGPoint {
        get {
            return CGPoint(x: self.contentOffset.x+self.frame.width/2, y: self.contentOffset.y+self.frame.height/2)
        }
        
        set(value) {
            self.contentOffset.x = value.x - self.frame.width/2
            self.contentOffset.y = value.y - self.frame.height/2
        }
    }
}
