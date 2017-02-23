//
//  UIViewController+BarHeight.swift
//  PROF_vaz.inc
//
//  Created by Murawaki on 11/1/16.
//  Copyright © 2016 suzuki_k. All rights reserved.
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
