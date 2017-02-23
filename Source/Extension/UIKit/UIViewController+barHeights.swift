//
//  UIViewController+BarHeight.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIViewController {
    public var stateBarHeight:CGFloat {
        return UIApplication.shared.statusBarFrame.height
    }
    
    public var navBarHeight:CGFloat {
        if let navBarH = navigationController?.navigationBar.frame.size.height {
            return navBarH
        } else {
            return 0
        }
    }
    
    public var topBarHeight:CGFloat {
        return stateBarHeight + navBarHeight
    }
}
