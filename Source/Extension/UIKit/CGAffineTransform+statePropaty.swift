//
//  CGAffineTransform+get.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGAffineTransform {
    /**
     角度 (弧度法)
    */
    public var radian: CGFloat {
        return atan2(self.b, self.a)
    }
    
    /**
     角度 (度数法)
    */
    public var degree: CGFloat {
        return radian / CGFloat(M_PI / 180)
    }
    
    public var scale: CGFloat {
        return sqrt(abs(self.a * self.d - self.b * self.c))
    }
}
