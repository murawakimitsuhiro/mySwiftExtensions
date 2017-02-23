//
//  CGSize+initSquare.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CGSize {
    public init(sideLength:CGFloat) {
        width = sideLength
        height = sideLength
    }
}
