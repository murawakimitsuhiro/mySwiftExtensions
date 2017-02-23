//
//  CGPoint+initComplex.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGPoint {
    /**
     中心点（原点) とそこからの 半径 及び 位置 を渡すことで円形に配置するためのポイントを返す
    */
    public init(originPoint: CGPoint, degree: CGFloat, radius: CGFloat) {
        let radian:CGFloat = CGFloat(Double(degree) * M_PI / 180.0)
        
        self.x = originPoint.x + radius * cos(radian)
        self.y = originPoint.y + radius * sin(radian)
    }
}
