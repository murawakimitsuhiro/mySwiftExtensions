//
//  CGSize+ComputedProperties.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

extension CGSize {
    
    public var biggast: CGFloat {
        if width > height {
            return width
        } else {
            return height
        }
    }
    
    /**
     横幅 / 横幅
     */
    public var ratio: CGFloat {
        return width / height
    }
}
