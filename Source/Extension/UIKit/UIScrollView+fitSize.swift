//
//  UIScrollView+fitSize.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIScrollView {
    public func adjustContentSize(_ margin:CGFloat = 0.0) {
        for i in 0 ..< self.subviews.count {
            if subviews[i].frame.endPoint.x > self.contentSize.width {
                self.contentSize.width += subviews[i].frame.endPoint.x - self.contentSize.width + margin
            }
            if subviews[i].frame.endPoint.y > self.contentSize.height {
                self.contentSize.height += subviews[i].frame.endPoint.y - self.contentSize.height + margin
            }
        }
    }
}
