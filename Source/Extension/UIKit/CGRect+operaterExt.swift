//
//  CGRect+operaterExt.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGRect {
    /// CGPointがCGRect内にあるかどうか を ~= で判別
    public static func ~= (rect:CGRect, point:CGPoint) -> Bool {
        return ((rect.minX...rect.minX + rect.width) ~= point.x) && ((rect.minY...rect.minY + rect.height) ~= point.y)
    }
}
