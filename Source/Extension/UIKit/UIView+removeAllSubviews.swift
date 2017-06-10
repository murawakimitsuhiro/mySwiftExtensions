//
//  UIView+removeAllSubviews.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    public static func removeAllSubviews(_ parentView: UIView) {
        let subviews = parentView.subviews
        subviews.forEach { view in
            view.removeFromSuperview()
        }
    }
	
    public func removeAllSubViews() {
        UIView.removeAllSubviews(self)
    }
    
}
