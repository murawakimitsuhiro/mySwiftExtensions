//
//  UIView+Animation.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    public func simplePopUpAnimation(_ duration:Double = 0.15) {
        UIView.animate(withDuration: duration, delay: 0, options: .autoreverse, animations: {
            self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (bool) in
            self.transform = CGAffineTransform.identity
        }
    }
}
